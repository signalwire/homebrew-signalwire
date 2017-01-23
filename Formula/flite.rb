class Flite < Formula
  desc "flite"
  homepage "https:/freeswitch.org/stash/projects/SD/repos/libflite"
  url "http://files.freeswitch.org/downloads/libs/flite-2.0.0.tar.gz"
  sha256 "4beb74f8f674cf8eec0f1d68e16e1660b32003de10328797aafa61c7d59cc72a"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
