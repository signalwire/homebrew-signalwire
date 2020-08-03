class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://github.com/freeswitch/sofia-sip/archive/f5d44540d32b646133f685f04cb8b6658f748714.zip"
  sha256 "7845967bd7891849ed239173568c90d376d11b9d53d6e7f4c4565f06150fc71a"

  def install
    system "./bootstrap.sh"
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
