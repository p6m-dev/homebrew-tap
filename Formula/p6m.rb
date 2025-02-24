class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.7.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.1/p6m-v0.7.1-linux-x86_64.tar.gz"
      sha256 "5094f79781fee5c5c78e28e4d4d864e40b8e5dd7ecf0fea73d6daad8affcfac4"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.1/p6m-v0.7.1-macos-x86_64.tar.gz"
      sha256 "d183a8d7b6176201f0780fb883a378c8e3c760c281c294316f66d8f139cc8447"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.1/p6m-v0.7.1-macos-arm64.tar.gz"
      sha256 "d183a8d7b6176201f0780fb883a378c8e3c760c281c294316f66d8f139cc8447"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end