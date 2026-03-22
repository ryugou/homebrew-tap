class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.1/vibepod-1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "70aaf93bc0c0a05b332fa90e54ad088d4aacca2bc71a6be5db2a9d926cf0e651"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.1/vibepod-1.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "147a25d6249f9213882927effdc6c6289805740e15550e55b85550a8f73b5061"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.1/vibepod-1.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdaf3efb089f0c8a47a98ab005854617da5cea6628db9e12773ff050ca43a6ff"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.1/vibepod-1.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b4193908e5c5548c9a6a1738bd421cbe40afff55a10e254d113a6fe819e1a90"
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
