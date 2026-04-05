class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.1/vibepod-1.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "40fb700f7c16a658d02658194aa683d6371905ae6fac0897e8d21204b9006f8e"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.1/vibepod-1.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "c31bd4d004a3ee516c45394b2dc3af9808c5afb8b05c4d917e6a5985ae16bd70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.1/vibepod-1.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "334878f1917caa13e7506313eb0a7b9f9ad8cf306e9bde34a9d717821ac2d91b"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.1/vibepod-1.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb69fb864bf721525990456fb70a029d5ee28638a9cf9ee9c49b2d79ca616b4f"
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
