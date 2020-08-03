class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://github.com/freeswitch/sofia-sip/archive/f5d44540d32b646133f685f04cb8b6658f748714.zip"
  sha256 "49b9db6e3a8c4882eb4a2e0ca090c5c4f0223ab7cb5fb60ee7c198dafc90f230"

  def install
    system "./bootstrap.sh"
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
