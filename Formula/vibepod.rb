class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.9.1/vibepod-1.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "a8ae1b9bce8f44f9461d0a5a78f55cbccae58ae54be61f034ab258d472bebf2d"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.9.1/vibepod-1.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "c19b85b4d668ac38193030593aebc07493c1f9ce171029bed1243804c6bab304"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.9.1/vibepod-1.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0ad60d5693697c7f1a85383b079541f88f347f114caadbe1b059cb4a3945d8b"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.9.1/vibepod-1.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9dc5b06c28c2bfaf35051d4e1d7c9b71eb8f92d0ae1c7720103b12c86506a2d4"
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
