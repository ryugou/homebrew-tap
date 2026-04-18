class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.6.1/vibepod-1.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "53de9c0dce0943f7332d89beb8b14d15850b2a6731808d752288da1c8245e420"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.6.1/vibepod-1.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "20dfb59a199e4117c3d41ab7f6c5d799c4a2238bfba1fd74f53902cf6860c9e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.6.1/vibepod-1.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "695bffe6d00590372ac0ddfad4e32b4c8d108010e06882bb6b4bdddd805874ac"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.6.1/vibepod-1.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b0330498ff016df1c5b2872b221a7d512f75c8be91b26488fa907703353b448"
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
