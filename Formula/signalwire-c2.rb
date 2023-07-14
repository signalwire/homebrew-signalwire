class SignalwireC2 < Formula
  desc "signalwire-c2"
  homepage "https://github.com/signalwire/signalwire-c"
  url "https://github.com/signalwire/signalwire-c/archive/v2.0.0.tar.gz"
  sha256 "7916ad76b2c2c75ff616d19bf044894771b3f8602b80a6f74d8ba26206faef79"


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
