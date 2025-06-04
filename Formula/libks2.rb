class Libks2 < Formula
  desc "libks2"
  homepage "https://github.com/signalwire/libks"
  url "https://github.com/signalwire/libks/archive/v2.0.7.tar.gz"
  sha256 "9603cad9a7538070050743b6a686d44927140221c07b859c6e1196842ce0080a"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
