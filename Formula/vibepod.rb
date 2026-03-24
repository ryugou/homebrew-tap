class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.2.0/vibepod-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0f296b69b2a793af1f389e511ac0dc4181afcfa7511c9ec9a13a7f9dd9346d60"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.2.0/vibepod-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "58642c9718b86cfb09ec99e5ec7c108a83500770ad272d19b5402cd53c04df6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.2.0/vibepod-1.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3aa2f81c8a1e3ece559ca18ed698f409bab29f685e1102b93ae28e8eabc02f69"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.2.0/vibepod-1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d0a5583c028ea6deaba1844f6f58cc2670ac110a3fa5cc8fd860964141f719e"
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
