class Libks < Formula
  desc "libks"
  homepage "https://github.com/signalwire/libks"
  url "https://github.com/signalwire/libks/archive/v1.8.2.tar.gz"
  sha256 "131d7896c81a7f3c9bf06860e4f564ca558d4be1614568fec688b3eb66d38107"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
