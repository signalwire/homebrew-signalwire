class Spandsp < Formula
  desc "spandsp"
  homepage "https://github.com/freeswitch/spandsp"
  url "https://files.freeswitch.org/downloads/libs/spandsp-0.0.6-7a0c2d5641.tar.gz"
  sha256 "2c7d3e5217df807e2d9a7f3f17da3da9e7b134e56201541ff3d95619a3c6f502"

  depends_on "libtiff"
  depends_on "libjpeg"
  depends_on "doxygen"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
