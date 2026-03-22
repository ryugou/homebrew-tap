class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.1/vibepod-1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "dd9326ed3df820f69d7ef8e0e5cf24950c53c2b97073d52310ed23a7c573cf2a"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.1/vibepod-1.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "6592d8e9f7f232c61646261b0b16ddccaa5da68358dcff656fe4f4d53b8adf4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.1/vibepod-1.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6736f4746588f5e54e223b841240bdd856fb57f5ca21db4d267b4b4b78a593f"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.1/vibepod-1.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b27897ef4cb5d021027ff4c413c1b695eef6bd8ea87dbbab6014313624daa4d5"
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
