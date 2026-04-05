class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.2/vibepod-1.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "ec27c5fd98568f23b2213a830145a00f1d859535446f49ff62e167eeb30f2772"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.2/vibepod-1.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "20624565714b6dad1a1386b27a06f661545ceedeb6ffa65596c9283a45b205f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.2/vibepod-1.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f192ee2aef13d77f516761071f026bb8d2898b7a54615f1f406717e1e321ccd"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.2/vibepod-1.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f3d7a99ee22336407f7ba9e59c26f98472d2f5f452a69df92e6d9fac109abcc"
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
