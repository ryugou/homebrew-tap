class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.2/vibepod-1.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "531818ec81a75d10d23ad5ae9c20a2e947f3ce59a3e887f3a09a4d6f0e59c2da"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.2/vibepod-1.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "0f26de4caf0bd8c7233859fb533295741918335ba646117f3c767ed8de4b0f7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.2/vibepod-1.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d48ea460ea7410ecad6e45a74d7f5093c6bd84242e37bf0d5b175f61879a8a73"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.1.2/vibepod-1.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58da32765fa62d4748b4022c6815e21a6fa85fd99017077b2dc4b71728534caa"
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
