class SignalwireC < Formula
  desc "signalwire-c"
  homepage "https://github.com/signalwire/signalwire-c"
  url "http://files.freeswitch.org/downloads/libs/signalwire-client-c-1.0.0.tar.gz"
  sha256 "432b699f853b69f69c0f622d62878ae81889dd492a6fd915a2259f45eae60561"


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
