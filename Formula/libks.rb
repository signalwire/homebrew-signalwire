class Libks < Formula
  desc "libks"
  homepage "https://github.com/signalwire/libks"
  url "https://github.com/signalwire/libks/archive/v1.8.3.tar.gz"
  sha256 "c677c36a0d8ceca2e53e07d1de66b87045ac2784df458d012557e2432692528b"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
