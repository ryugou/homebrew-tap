class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.1/vibepod-1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "b289ecc8bbb848ea4d89dc98d03ad162ab5d323e669f1ecfbd73fd9a1049d4a9"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.1/vibepod-1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "eea5535e17488d8903faa0799cf7ea23ff0afbd2a87d54ffe556ec0e5e1919fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.1/vibepod-1.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0e3dae78d716ee7b7d44bbeadd0a22d5ced41d2d4de62b2c85f3c548d3d4f94"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.1/vibepod-1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "717d6f9d6a28fc9ff58f79cb95db2091d645c6096a6434214f7d148dc14273d3"
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
