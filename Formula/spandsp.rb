class Spandsp < Formula
  desc "spandsp"
  homepage "https://github.com/freeswitch/spandsp"
  url "https://files.freeswitch.org/downloads/libs/spandsp-3.0.0-f995f452ee.tar.gz"
  sha256 "73ef6e85194df2693299b74836f5c1ff1298c480d5705c4d6d4e6ffb8caf8c99"

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
