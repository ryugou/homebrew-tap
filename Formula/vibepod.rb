class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.0/vibepod-1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7c6df4f56227cca414a78a70a675de4cd81183de069a59879c6a01b2ee451813"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.0/vibepod-1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5370e9702c1790aa9c732cbb6ada9edd17cab56b503de4270e03ea34f412726f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.0/vibepod-1.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9927e2d928e0a790a8190a1995a118c2f1a23193f53b39ce3ad8edc4c9801bb4"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.0/vibepod-1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc871dcbc5c9870997168e42675b9c2daf57aff51c7c1e0c2f7a8cb84a5b2ad4"
    end
  end

  def install
    bin.install "vibepod"
    bin.install_symlink "vibepod" => "vp"
  end

  test do
    assert_match "vibepod", shell_output("#{bin}/vibepod --version")
  end
end
