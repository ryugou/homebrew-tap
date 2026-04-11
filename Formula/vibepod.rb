class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.5.0/vibepod-1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "7d1c0847e6478789f94d40567daf0001eb54cf6c92f9513c80b3451e671d4e63"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.5.0/vibepod-1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "ff9200c3c3c74aace5c47fbe3cfe5d7eb8b7c5fef39bdabb4916b2167e1f47ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.5.0/vibepod-1.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3b7080bd202c04a6b2a6278bc412768f05b1380420b4fc78b8269fe80a53654"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.5.0/vibepod-1.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a22c2d22220a8fe198ef953460507c74fe90468202b8be0b36d28e51f71b9592"
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
