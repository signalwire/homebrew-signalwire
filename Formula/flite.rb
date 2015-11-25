class Flite < Formula
  desc "flite"
  homepage "https:/freeswitch.org/stash/projects/SD/repos/libflite"
  url "http://files.freeswitch.org/downloads/libs/flite-2.0.0.tar.gz"
  sha256 "fe3b4b653739d714d47042333d3634ea0ab93362addd4e968840f837045dd345"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
