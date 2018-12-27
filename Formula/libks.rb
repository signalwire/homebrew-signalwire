class Libks < Formula
  desc "libks"
  homepage "https://github.com/signalwire/libks"
  url "http://files.freeswitch.org/downloads/libs/libks-1.1.0.tar.gz"
  sha256 "df685ad4374b2e6196fb5c28013a9fd1effe4a3a18b999f7633711713546b858"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
