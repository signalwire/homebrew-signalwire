class SignalwireC < Formula
  desc "signalwire-c"
  homepage "https://github.com/signalwire/signalwire-c"
  url "http://files.freeswitch.org/downloads/libs/signalwire-client-c-1.0.0.tar.gz"
  sha256 "85b0493a2332b2f763a8a2f92f4e9905c7d9c49eb4be4218f5aa99b87a28dbce"


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
