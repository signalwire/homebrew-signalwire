class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://files.freeswitch.org/downloads/libs/sofia-sip/sofia-sip-1.13.9-b0c314f839.tar.gz"
  sha256 "7ddc38bcb4a7c31af20ce4964f1712cdec257548e2b227daa0ab810181d6dda8"

  depends_on "openssl"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
