class Sshdex < Formula
  desc "Lightweight, terminal-based SSH host manager written in Go"
  homepage "https://github.com/sshdex/sshdex"
  version "0.1.5"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sshdex/sshdex/releases/download/v0.1.5/sshdex_0.1.5_darwin_arm64.tar.gz"
    sha256 "95196a95addf6eaeb0e7006f49e3f9819a308c3b3f9ef9990a31773225d335a4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sshdex/sshdex/releases/download/v0.1.5/sshdex_0.1.5_darwin_amd64.tar.gz"
    sha256 "41edc73b407cae0a4981e0c071349afcffc2523162013534c5a4eaeda6f38db0"
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
