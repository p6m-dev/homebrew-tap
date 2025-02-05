class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.6.2"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.2/p6m-v0.6.2-linux-x86_64.tar.gz"
      sha256 "9a7a2caff36c9606ab9abd08a5fbc4d932780b896e8ba3858d47c8dd984a3957"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.2/p6m-v0.6.2-macos-x86_64.tar.gz"
      sha256 "79c2aaba3823f9a8e1df5d332a40b010bf72f3def510c79ab65824ec5dbfb48f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.2/p6m-v0.6.2-macos-arm64.tar.gz"
      sha256 "79c2aaba3823f9a8e1df5d332a40b010bf72f3def510c79ab65824ec5dbfb48f"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end