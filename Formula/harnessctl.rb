class Harnessctl < Formula
  desc "Universal CLI wrapper for coding agents (Claude Code, Codex, OpenCode)"
  homepage "https://github.com/mnvsk97/harnessctl"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-arm64"
      sha256 "7127e07182fdb793dd5a3c53f89ce1449ad2ada72d955202f4254b7ebf7a36c5"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-x64"
      sha256 "8b1e3ab8bfb06ea7d3d6c8642d47a4d30d20791014faec5dde1efb6cd4a8c576"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-arm64"
      sha256 "a99811776e76ea493d928f7df76861cb5215f7c5e7c0bafdb757270e992b9d47"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-x64"
      sha256 "cf3fcd86fffe96fcf1ae7b1eb3dbebf624586113f228c3e58ba99869b6150cf6"
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
