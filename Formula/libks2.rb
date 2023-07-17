class Libks2 < Formula
  desc "libks2"
  homepage "https://github.com/signalwire/libks"
  url "https://github.com/signalwire/libks/archive/v2.0.1.tar.gz"
  sha256 "32f4f6efb1859be1c7fcbe35751be132e68ca52ea6b26e3ee500f88068cd0667"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
