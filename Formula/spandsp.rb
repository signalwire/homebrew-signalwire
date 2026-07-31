class Spandsp < Formula
  desc "spandsp"
  homepage "https://github.com/freeswitch/spandsp"
  url "https://github.com/freeswitch/spandsp/archive/v3.1.1.tar.gz"
  sha256 "71b3f1492cd5ca3dacdaa7eb6b54f5d14e0e2267ae0a1df09a87ca93cfeb1401"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "libtiff"
  depends_on "libjpeg"
  depends_on "doxygen"

  def install
    # The GitHub tarball ships no configure script, only configure.ac.
    system "./autogen.sh"

    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
