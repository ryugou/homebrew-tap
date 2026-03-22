class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "014f7b82d787e0850a499d9c58f9643e1f226fdf0cadb507fc2f889f2e5a95b1"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "ae7a14e38c6292108f80c645ffbd06b94e41b60ea6b76e20fd73314ad230e953"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ac5f4ffae84c1739cdec14cff1a244fc88e4ea36a1f0e50f9b227739e97711a"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31a662310726ffdcfbab1906a2cedce1808aeda1ba54cf62ce095bc9f1bd5952"
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
