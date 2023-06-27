class SignalwireC < Formula
  desc "signalwire-c"
  homepage "https://github.com/signalwire/signalwire-c"
  url "https://github.com/signalwire/signalwire-c/archive/v1.3.3.tar.gz"
  sha256 "c4e065f471c822df9d08d3597102dd7033032e112561387b9d89b4f5adf698d7"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"
  depends_on "libks"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
