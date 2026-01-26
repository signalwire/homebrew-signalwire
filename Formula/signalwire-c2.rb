class SignalwireC2 < Formula
  desc "signalwire-c2"
  homepage "https://github.com/signalwire/signalwire-c"
  url "https://github.com/signalwire/signalwire-c/archive/v2.0.5.tar.gz"
  sha256 "336c88a28015cf666bdbb070e9e11ce53dfd05baec074171fe8866945b68e8f9"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"
  depends_on "libks2"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
