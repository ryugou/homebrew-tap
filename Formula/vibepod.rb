class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.6.0/vibepod-1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "23e0dac9389f3fd344f26730597e2f7008194206383fffb961e9f57202f156d3"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.6.0/vibepod-1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "e06178d61c5476ca60ffbf7173e140a279087f49ecc30a49c8a70d631537cb4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.6.0/vibepod-1.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "100d90f567fc1fb37919d17970bbe361c010e22f6382e3ec3a69743331473a0b"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.6.0/vibepod-1.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ecdaf71db88857c60d88126049d3eb9698c29ef9a93287d1985e029d0d31ac72"
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
