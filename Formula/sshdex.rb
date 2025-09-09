class Sshdex < Formula
  desc "Lightweight, terminal-based SSH host manager written in Go"
  homepage "https://github.com/sshdex/sshdex"
  url "https://github.com/sshdex/sshdex/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "REPLACE_WITH_SHA256" 
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/sshdex"
  end

  test do
    system "#{bin}/sshdex", "--help"
  end
end
