class Harnessctl < Formula
  desc "Universal CLI wrapper for coding agents (Claude Code, Codex, OpenCode)"
  homepage "https://github.com/mnvsk97/harnessctl"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-arm64"
      sha256 "d9bc40cebee86f5d9a0c990fdb3178b1ff0212fb203014bb8ba30e75c9e32d36"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-darwin-x64"
      sha256 "1a27c94ff6f10136934c56f962103649b4f7176a5c67b09cadb331d8eab445e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-arm64"
      sha256 "d505993d94da09aef5e091038f3e92c2709f795f2df1c5c1e80ebcce7ec6481f"
    end
    on_intel do
      url "https://github.com/mnvsk97/harnessctl/releases/download/v#{version}/harnessctl-linux-x64"
      sha256 "2b4f8529e5b234ea0e1b3d480d4a7dc53abb26f4d24e0f4611b6c7586bffa7dc"
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
