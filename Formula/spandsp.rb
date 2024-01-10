class Spandsp < Formula
  desc "spandsp"
  homepage "https://github.com/freeswitch/spandsp"
  url "https://github.com/freeswitch/spandsp/archive/0d2e6ac65e0e8f53d652665a743015a88bf048d4.tar.gz"
  sha256 "151bd945874f5b0c2971b6431bd753e5bd83d7ff3c799776e359d949bfae1ea5"

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
