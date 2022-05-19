class SignalwireC < Formula
  desc "signalwire-c"
  homepage "https://github.com/signalwire/signalwire-c"
  url "https://files.freeswitch.org/downloads/libs/signalwire-client-c/signalwire-client-c-1.3.2.tar.gz"
  sha256 "d6b68288ab36cf3860798263900a9bb0481d87ac9fc18d1c7d932682c8a1db06"


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
