class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.9.0/vibepod-1.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "a087fad0e815d53ddf34729119d07c744fbd60b3859956fba4c9558ac67051e6"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.9.0/vibepod-1.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "fba5af7fdbebba8e85ae007a6d45fbad4a65db9f1b370d9c44c79ffd578335a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.9.0/vibepod-1.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48b795516354247c4ef74efb6ff6976bfd4160608690fde6a3832247c8ebe761"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.9.0/vibepod-1.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74c80fd5e21224e24fe153dff5d65630e5cbb07b554eb9daadcdf21b8f0874fd"
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
