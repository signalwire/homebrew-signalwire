class Spandsp < Formula
  desc "spandsp"
  homepage "https://github.com/freeswitch/spandsp"
  url "https://files.freeswitch.org/downloads/libs/spandsp-3.0.0-0d2e6ac65e.tar.gz"
  sha256 "29c728fab504eb83aa01eb4172315c2795c8be6ef9094005f21bd1e3463f5f2f"

  depends_on "libtiff"
  depends_on "libjpeg"
  depends_on "doxygen"

  def install
    args = ["--disable-dependency-tracking", "--prefix=#{prefix}", "--with-pic"]
    system "./configure", *args
    system "make"
    system "make", "install"
  end
end
