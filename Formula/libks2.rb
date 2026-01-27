class Libks2 < Formula
  desc "libks2"
  homepage "https://github.com/signalwire/libks"
  url "https://github.com/signalwire/libks/archive/v2.0.10.tar.gz"
  sha256 "cd0d8504870c2e0e1306e55fd27dede976ab9f3a919487bc10b526576d24d568"


  depends_on "cmake" => :build
  depends_on "ossp-uuid"
  depends_on "openssl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
