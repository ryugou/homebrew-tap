class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "11255b0d4d0d5a98f37acbf867eb4f07a77c574d5790c2ee78931042a0559c2f"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "1c9302f6025374163d27d486036953deaa4804c73b614650cc32d773c2fd7785"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1d85d38595fc6fe3d0df85a6d85eb501364e73f42e010102be86efaf5f0f303"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.0.0/vibepod-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "447dff3038918f20a0da758d1d46ea325f6f0eb0fcc50eed3a0e4c879fcb7d3e"
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
