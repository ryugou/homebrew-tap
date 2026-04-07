class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.3/vibepod-1.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "b4da711531b66dfecb5b92ef0723e9ac5b2fb354d0f6b6c4038a27e921b83a14"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.3/vibepod-1.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "cc638f52ee5aa89693e8e0408d1deb5bea79eeb78d481833df110c983661b6e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.3/vibepod-1.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecf928f1db7e2cdc917f8a0730d3dac0790f24fad13a101883ea87eaa150be30"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.3/vibepod-1.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2bd8e23259ce6168888851adda302e436a1b208c26be349e951b0a7b0208f3f"
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
