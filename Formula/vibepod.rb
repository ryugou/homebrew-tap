class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.1/vibepod-1.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "73a9f512eedc5c064465a2b911b9d616b12424cc50ccda36c2bf4c249353369b"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.1/vibepod-1.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "e7a136134b9fe794515071af0c188010ba3de7e88d9fb13f945ca0ddd301007a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.1/vibepod-1.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39393634a5952b16f1822fdf6a30fa2e57c40ee241e56d3062254ea22458dad5"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.1/vibepod-1.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e858ca38767d65bd97027b9001e2f3e19f4e4b0f406a80fb088880ec0ef3ec4"
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
