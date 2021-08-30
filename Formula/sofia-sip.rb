class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://files.freeswitch.org/downloads/libs/sofia-sip/sofia-sip-1.13.5-afa7ebb814.tar.gz"
  sha256 "20fb4eb273e169298e6d15538fa36114c14efe52768f74a2279cf88fa822a59b"

  depends_on "openssl"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
