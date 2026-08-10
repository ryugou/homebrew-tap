class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.2/vibepod-1.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "b288b7d3669f8be46cf75ce2b688271fb1a7711c0988e22fd438cb016dc4b2e2"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.2/vibepod-1.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "f9273ece0d157f6687588bfaa8c37d39576fbac3b0eef7acf98338451997fb79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.2/vibepod-1.8.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16de59e9c6a00eb02ccf783b7431272213bc0604373ba944f16226772cdb57fc"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.2/vibepod-1.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "693bef6ec5027e34a91936efc9a33f146415ee9165536ef75f617d9809e6796d"
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
