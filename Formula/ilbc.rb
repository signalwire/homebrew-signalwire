class Ilbc < Formula
  desc "FreeSWITCH copy of the Internet Low Bit Rate codec library."
  homepage "https://freeswitch.org/stash/projects/SD/repos/libilbc/browse"
  url "http://files.freeswitch.org/downloads/libs/ilbc-0.0.1.tar.gz"
  sha256 "87ef3dc284a587bbaa4187e8088dcc39ce9994b549b15dc2a02ce288ad409c4a"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build

  def install
    ENV.deparallelize
    system "glibtoolize"
    system "./bootstrap.sh"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    (testpath/"test.c").write <<-EOS.undent
      #include <ilbc.h>
      #include <stdio.h>

      int main() {
        ilbc_encode_state_t Enc_Inst;

        ilbc_encode_init(&Enc_Inst, 20);
        return 0;
      }
    EOS
    system ENV.cc, "test.c", "-I#{include}", "-L#{lib}", "-lilbc", "-o", "test"
    system "./test"
  end
end
