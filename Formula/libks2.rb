class Libks2 < Formula
  desc "libks2"
  homepage "https://github.com/signalwire/libks"
  url "https://github.com/signalwire/libks/archive/v2.0.11.tar.gz"
  sha256 "7142800a0c9095ce0e52308c815026a8ad2a197f519363c050fe441039de20be"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
