class Libks2 < Formula
  desc "libks2"
  homepage "https://github.com/signalwire/libks"
  url "https://github.com/signalwire/libks/archive/349ed475e1b1c5ba94342d99819b9062e5e008cc.tar.gz"
  sha256 "19a6bb6b17897466f162d0000da7885afcd68ce3f231518a630cd9823c33bdba"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
