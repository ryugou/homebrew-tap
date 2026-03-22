class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "5c26b62ec46ad9c970c7ee718388fa469c1ef47c03487c79dd4c78da9a7cd798"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "80696514d9673847f1d3c8bb5369e7b6a20aad1f3086bb7d800620e4bbad0c0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f460b6bc986db4d12c3ebcbea0fa76dba38c29e60ffeb0c0e5803fcbcd19f8cd"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d10100bf69f52a96a28c6b2d6d3f07c515bb62e2ce1cf11fcb7f1117e23ea9a8"
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
