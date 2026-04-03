class Vegapunk < Formula
  desc "Rationale-tracing GraphRAG engine — auto-builds knowledge graphs from text"
  homepage "https://github.com/ryugou/vegapunk"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vegapunk/releases/download/v#{version}/vegapunk-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/ryugou/vegapunk/releases/download/v#{version}/vegapunk-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/ryugou/vegapunk/releases/download/v#{version}/vegapunk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "vegapunk"
  end

  test do
    assert_match "vegapunk", shell_output("#{bin}/vegapunk --version")
  end
end
