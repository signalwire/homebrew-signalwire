class Libks < Formula
  desc "libks"
  homepage "https://github.com/signalwire/libks"
  url "http://files.freeswitch.org/downloads/libs/libks-1.1.0.tar.gz"
  sha256 "305dded29cfb14ec39bc43d8aa4613b38ca7d2b01a9ce3ca8fe7c39e31caa32a"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
