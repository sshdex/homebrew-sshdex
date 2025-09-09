class Sshdex < Formula
  desc "Lightweight, terminal-based SSH host manager written in Go"
  homepage "https://github.com/sshdex/sshdex"
  version "0.1.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sshdex/sshdex/releases/download/v0.1.3/sshdex_0.1.3_darwin_arm64.tar.gz"
    sha256 "41750729727f4b0fa367244f823ec14f72a92fb8900f94a67eeffa46f1f1284e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sshdex/sshdex/releases/download/v0.1.3/sshdex_0.1.3_darwin_amd64.tar.gz"
    sha256 "ff61a58dbbbe3b738ab4064991ae7215a410a03c4d46d37298ed9715e3a0166f"
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
