class TtySolitaire < Formula
  homepage "https://github.com/mpereira/tty-solitaire"
  url "https://github.com/mpereira/tty-solitaire/archive/v0.2.0.tar.gz"
  sha256 "9d47c5a88b3d70d19acfdff29532896b7905e9ddc20b29730e3a8cb92ff3cca4"

  def install
    bin.mkpath
    system "make", "LDFLAGS=-lncurses"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "ttysolitaire", "-h"
  end
end
