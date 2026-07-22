class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.7.1/vibepod-1.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "86fb3772c4c5c3c05d29aea7ff2ad8a6a765499e2f42e7e7b489cf063528b674"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.7.1/vibepod-1.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "fe85973aee6d59e26501342f0fcdc7f8d4704c0c68c8265ce8c8bc9d6f287d7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.7.1/vibepod-1.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2aea8a71c213a540c011111a63dc9e1432712523c3fad0ac8f336450aaac5344"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.7.1/vibepod-1.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46ea8df22ca41a9c9273979138b0dcb763fa0d1a93233b3d3060a07b5de3e454"
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
