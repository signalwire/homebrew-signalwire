class Spandsp < Formula
  desc "spandsp"
  homepage "https://github.com/freeswitch/spandsp"
  url "https://files.freeswitch.org/downloads/libs/spandsp-3.0.0-f995f452ee.tar.gz"
  sha256 "070444fe063f6d1bcdbd57f18847adc93fecd9be8240dc81de553fe5abc5f878"

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
