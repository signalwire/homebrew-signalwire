class Flite < Formula
  desc "flite"
  homepage "https:/freeswitch.org/stash/projects/SD/repos/libflite"
  url "http://files.freeswitch.org/downloads/libs/flite-2.0.0.tar.gz"
  sha256 "3a66c544373c5905fafb1314bc0e4988ef9e0993b79d1448f68a756ca8b96e21"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
