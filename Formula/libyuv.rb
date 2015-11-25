class Libyuv < Formula
  desc "libyuv"
  homepage "https:/freeswitch.org/stash/projects/SD/repos/libyuv"
  url "https://files.freeswitch.org/downloads/libs/libyuv-0.0.1280.tar.gz"
  sha256 "97a30b87cbea5a35222cc1071ecb78562245b7c457baa26f41beba8af85861ef"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end
end
