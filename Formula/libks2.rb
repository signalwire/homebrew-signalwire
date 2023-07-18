class Libks2 < Formula
  desc "libks2"
  homepage "https://github.com/signalwire/libks"
  url "https://github.com/signalwire/libks/archive/v2.0.2.tar.gz"
  sha256 "af94f9fcdb2022b8f09187309ac2d372a5a4cc639af77cd4375f2d5c88b4fd63"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
