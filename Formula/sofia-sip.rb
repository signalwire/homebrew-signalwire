class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://files.freeswitch.org/downloads/libs/sofia-sip/sofia-sip-1.13.5-afa7ebb814.tar.gz"
  sha256 "10c2b31b61db6f5719a9bae7d356f6f513760c2c5c12d0c5c2720d46ddf415b6"

  depends_on "openssl"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
