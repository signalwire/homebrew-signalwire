class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://freeswitch.org/bamboo/browse/SP-SPTD-3/artifact/shared/sofia-sip-pre-bootstrapped-tarball/sofia-sip-1.12.12-f5d44540d3.tar.gz"
  sha256 "7845967bd7891849ed239173568c90d376d11b9d53d6e7f4c4565f06150fc71a"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
