class Libks < Formula
  desc "libks"
  homepage "https://github.com/signalwire/libks"
  url "http://files.freeswitch.org/downloads/libs/libks-1.7.1.tar.gz"
  sha256 "00520fa94121be1addcaa860d31fd0ea1c082339740fa518f0b61a6ac3794880"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
