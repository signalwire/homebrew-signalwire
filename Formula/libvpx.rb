class Libvpx < Formula
  desc "VP8 video codec"
  homepage "https://www.webmproject.org/code/"
  url "http://files.freeswitch.org/downloads/libs/libvpx-1.4.0.tar.gz"
  sha256 "70a0eb5e6575936aeb2e1fb7f73cb6cddcf95c80ef876239f65275d25a0b0cda"

  head "https://freeswitch.org/stash/scm/sd/libvpx.git", :using => :git

  depends_on "yasm" => :build

  option "gcov", "Enable code coverage"
  option "mem-tracker", "Enable tracking memory usage"
  option "visualizer", "Enable post processing visualizer"
  option "with-examples", "Build examples (vpxdec/vpxenc)"

  def install
    args = ["--prefix=#{prefix}", "--enable-pic", "--disable-unit-tests"]
    args << (build.with?("examples") ? "--enable-examples" : "--disable-examples")
    args << "--enable-gcov" if build.include? "gcov" and not ENV.compiler == :clang
    args << "--enable-mem-tracker" if build.include? "mem-tracker"
    args << "--enable-postproc-visualizer" if build.include? "visualizer"

    # configure misdetects 32-bit 10.6
    # https://code.google.com/p/webm/issues/detail?id=401
    if MacOS.version == "10.6" && Hardware.is_32_bit?
      args << "--target=x86-darwin10-gcc"
    end

    mkdir "macbuild" do
      system "../configure", *args
      system "make", "install"
    end
  end
end
