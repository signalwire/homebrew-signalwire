class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://files.freeswitch.org/downloads/libs/sofia-sip/sofia-sip-1.13.9-f6ee306084.tar.gz"
  sha256 "daf75c41408c559c2d58a8fd4d39be4a8ff5144bc1db220d4dbc28deeed6670a"

  depends_on "openssl"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
