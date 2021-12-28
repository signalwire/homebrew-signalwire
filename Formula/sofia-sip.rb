class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://files.freeswitch.org/downloads/libs/sofia-sip/sofia-sip-1.13.6-7d7568a95a.tar.gz"
  sha256 "189c41c61c29e7d6ff5741285a257d5bba9294e66df625bf432826512b2600ea"

  depends_on "openssl"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
