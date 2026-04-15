class Harnessctl < Formula
  desc "Universal CLI wrapper for coding agents (Claude Code, Codex, OpenCode)"
  homepage "https://github.com/mnvsk97/harnessctl"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-arm64"
      sha256 "49e1d280f5af5e02b8228e07f4cda4a9a70753b306b500bc6603019a61e1f4da"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-x64"
      sha256 "497d09cae72a0a9d41d30ae0a90e9c0498c1b1d0b0669a596881def9171714b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-arm64"
      sha256 "b0d3bdd83c208513b5bd094cbb65c82cbbf4faf61c4870e637e4c6359a5605e2"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-x64"
      sha256 "38126ad9d492dc4136631988f4f55f86e8a02c30cb6063a5eac22919bb4ac8d2"
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
