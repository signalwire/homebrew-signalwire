class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://files.freeswitch.org/downloads/libs/sofia-sip-1.13.4-6901dbf09b.tar.gz"
  sha256 "4a1be3ede513574751c0818890b574efc235884b4865228a044f1da1fdced3ba"

  depends_on "openssl"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
