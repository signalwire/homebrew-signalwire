class SignalwireC2 < Formula
  desc "signalwire-c2"
  homepage "https://github.com/signalwire/signalwire-c"
  url "https://github.com/signalwire/signalwire-c/archive/v2.0.2.tar.gz"
  sha256 "6ae91347aafa2d23ddb6f7262f759832599ee85daee4bc6e650e0e4fe2189967"


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
