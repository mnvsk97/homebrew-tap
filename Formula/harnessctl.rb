class Harnessctl < Formula
  desc "Universal CLI wrapper for coding agents (Claude Code, Codex, OpenCode)"
  homepage "https://github.com/mnvsk97/harnessctl"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-arm64"
      sha256 "7f92be2c1ba28e0bc7c768cefeff9600c3395d26964ff3bbf905d379e5f2cec8"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-x64"
      sha256 "ac5108454204027a05d0746c77e5e9badbca85f4a95032a97fd885bc7b2c2e47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-arm64"
      sha256 "80a006380e023487061a461e552ca05ef2472f088941df353a09e12c98defee0"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-x64"
      sha256 "4fc8f6bb484bac5a2abd10e271b143c8cc01fe248d1b60246e93fa6bbf9f8cad"
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
