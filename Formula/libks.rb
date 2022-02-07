class Libks < Formula
  desc "libks"
  homepage "https://github.com/signalwire/libks"
  url "http://files.freeswitch.org/downloads/libs/libks-1.8.0.tar.gz"
  sha256 "26fb0291312f7ef8777a6d346ced43165b4e016471b8248c4f9d4a834ba11032"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
