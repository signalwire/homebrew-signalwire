class Spandsp < Formula
  desc "spandsp"
  homepage "https://github.com/freeswitch/spandsp"
  url "https://github.com/freeswitch/spandsp/archive/v3.1.0.tar.gz"
  sha256 "a32a548a7d8a370d46481f4aa303241f605e41136459340c729fe4569d451025"

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
