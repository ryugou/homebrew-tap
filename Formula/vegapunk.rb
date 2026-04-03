class Vegapunk < Formula
  desc "Rationale-tracing GraphRAG engine — auto-builds knowledge graphs from text"
  homepage "https://github.com/ryugou/vegapunk"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/ryugou/vegapunk/releases/download/v0.1.0/vegapunk-aarch64-apple-darwin.tar.gz"
    sha256 "6639c028a95414dff807c426b2a4415b7263769c0da367ab6ef5880e96f1dad7"
  end

  on_linux do
    url "https://github.com/ryugou/vegapunk/releases/download/v0.1.0/vegapunk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "70fbf3ca7632036f55db715ee0e78775a474f486b3d94811171479139cb36d5d"
  end

  def install
    bin.install "vegapunk"
  end

  test do
    assert_match "vegapunk", shell_output("#{bin}/vegapunk --version")
  end
end
