class Harnessctl < Formula
  desc "Universal CLI wrapper for coding agents (Claude Code, Codex, OpenCode)"
  homepage "https://github.com/mnvsk97/harnessctl"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-arm64"
      sha256 "d48b10d64f00efdcac4665fe806ccc6e760d4c43ae93d1dea01b56922ba6de7b"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-x64"
      sha256 "e692f1f899fbc2d41e4e11f72c91e2e32621b9cde1b92b00b23c39bec65c2e3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-arm64"
      sha256 "c44c9f0f2c781312fc11b06429c325eea277c4bd52d54fe18ad47a283264b7c5"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-x64"
      sha256 "773c7c76e19dc7965dacf6e7c82c1e79dfb868915144e2128c0f31263f9cc19a"
    end
  end

  def install
    binary = Dir["harnessctl-*"].first
    bin.install binary => "harnessctl"
  end

  test do
    assert_match "harnessctl", shell_output("#{bin}/harnessctl --help")
  end
end
