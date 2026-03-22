class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.0/vibepod-1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "995759024f1123b63df34ed24298e8297fe7e123b8cad0745f0b808035e664eb"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.0/vibepod-1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "8f1afdde03ef17ae1b58f8f7a20698329ec5ebdbee9f79c6dcc0c71652119bb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.0/vibepod-1.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c736b32363a3f99174018cc63a436cd20cb93365e8b91ebeb707b0cb66da2b75"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.0/vibepod-1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "544ebc71015cd88cbe64be0e4b7a67901d048e526244ee0216b5966e4edf931b"
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
