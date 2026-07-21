class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.7.0/vibepod-1.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "b73dff8e20c861a2586e950550164f2bb772949a2194b0d778fc59e336059680"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.7.0/vibepod-1.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "4c8170f7a0bfd344a17c04fc2547b5eebd425b46e887f0ebc45ded3d9a6d443a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.7.0/vibepod-1.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cad1d6027a621d6c8b5b863d99b5b88e51093e16c5b52abb6fd937c526903fb3"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.7.0/vibepod-1.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3058a2db5d39db4dc3bd9d789e02d6b62e56e0be55304cb72f06fe167fd6f79"
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
