class Sshdex < Formula
  desc "Lightweight, terminal-based SSH host manager written in Go"
  homepage "https://github.com/sshdex/sshdex"
  version "0.1.4"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sshdex/sshdex/releases/download/v0.1.4/sshdex_0.1.4_darwin_arm64.tar.gz"
    sha256 "fc1a95b71c03951a223f25e00c4386bc9a336db27c455296a70a13f0db86af37"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sshdex/sshdex/releases/download/v0.1.4/sshdex_0.1.4_darwin_amd64.tar.gz"
    sha256 "49cac16261526787af2266f131bb62a17d5f5ecd52ba4852ad022a122863c1ec"
  else
    odie "Unsupported platform for prebuilt binary"
  end

  def install
    bin.install "sshdex"
  end

  test do
    system "#{bin}/sshdex", "--help"
  end
end
