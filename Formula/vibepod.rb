class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.3.0/vibepod-1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "80c2b4077eaec70cbac6995c46a90c54064b60398886c25df872c710ab9b5575"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.3.0/vibepod-1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "08038924c42f9a79c9534139bbd6dcebff80992b34eb29c04849a102d66cf30c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.3.0/vibepod-1.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e81471384bad14e6f2d903637a0128da6151b4fe33a28488b58ee6c6aa19688b"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.3.0/vibepod-1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a02f38d7e157381426fd3269ef78319a84ebd2f32c9fecabbd327029bfb5e1b"
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
