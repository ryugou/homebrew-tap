class Vibepod < Formula
  desc "Safely run AI coding agents in Docker containers"
  homepage "https://github.com/ryugou/vibepod"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.0/vibepod-1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "446b950b6882bfce425d62136a1b7694221bf0e3ef57fe29338bbec51155086f"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.0/vibepod-1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ccb2b4ff7c720400099539201c4f44d93b08d609ce3bd95c44a2134b7a3a555"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.0/vibepod-1.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb18fd92197992273685334158b85f7378b701706fc585783f45b77ef8bb50bf"
    else
      url "https://github.com/ryugou/vibepod/releases/download/v1.4.0/vibepod-1.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "056fd6dafe2b5e457738fb68ebde627b332a4bd9ce070676c84718c5829c52ad"
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
