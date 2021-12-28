class SignalwireC < Formula
  desc "signalwire-c"
  homepage "https://github.com/signalwire/signalwire-c"
  url "https://files.freeswitch.org/downloads/libs/signalwire-client-c-1.3.1.tar.gz"
  sha256 "4ada7699a5565f339258fde8156a34155733264c12b1a3709d9b8aeabfb75815"


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
