class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.0/vibepod-1.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "891065f7be05143d71eb7f2a5b74c21defc58ebd48b0182adc3b4cbe54674155"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.0/vibepod-1.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "51af379d210b70d4cfd80ad4a113593d3596dc819792bf05394bad4a5c8bf761"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.0/vibepod-1.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "922b40833bb8ed1ff4668ce366c699dc766258c0e27f63011940c718a22efa2f"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.8.0/vibepod-1.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f7cbe2df5ad4670ef23f92362fbc7657c59582273dc4f294e1ed718eb0d36e7"
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
