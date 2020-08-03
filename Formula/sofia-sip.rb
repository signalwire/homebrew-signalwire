class SofiaSip < Formula
  desc "sofia-sip"
  homepage "https://github.com/freeswitch/sofia-sip"
  url "https://freeswitch.org/bamboo/browse/SP-SPTD-3/artifact/shared/sofia-sip-pre-bootstrapped-tarball/sofia-sip-1.12.12-f5d44540d3.tar.gz"
  sha256 "2c7d3e5217df807e2d9a7f3f17da3da9e7b134e56201541ff3d95619a3c6f502"

  depends_on "openssl"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic", "--with-glib=no", "--disable-stun"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
