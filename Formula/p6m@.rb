class P6mAT0_10_1 < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.10.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.10.1/p6m-v0.10.1-linux-x86_64.tar.gz"
      sha256 "a71f2611e2beb46515ab7868101d7604d95aea7f39827e96e8d87b4b9a862118"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.10.1/p6m-v0.10.1-linux-arm64.tar.gz"
      sha256 "01d31b1a5d8597b6543908a9083ab7d44ca05e139b06cc13bbe4a4d177a54b25"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.10.1/p6m-v0.10.1-macos-x86_64.tar.gz"
      sha256 "0e5262aa77dbf6ab27877b70cf93c57033a8b6d381ef4a0aa50cf1f9b9c4ef07"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.10.1/p6m-v0.10.1-macos-arm64.tar.gz"
      sha256 "6ecb92ba8228af300fd938538b77e6ff68d3eb89d923b28ad01e02b959c5ab80"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end