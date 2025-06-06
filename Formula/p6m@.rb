class P6mAT0_7_5 < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.7.5"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.5/p6m-v0.7.5-linux-x86_64.tar.gz"
      sha256 "144d472def73010317c13ec4d1cf5182ca1617061d37a7b5d24df3ee9ac4e7bd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.5/p6m-v0.7.5-linux-arm64.tar.gz"
      sha256 "65611b6cc57c7ddff33022a96e2d2729ed1b369b2a376b6ab90f6f565c136207"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.5/p6m-v0.7.5-macos-x86_64.tar.gz"
      sha256 "a81cac0dec155f9893820d2982ef0a11cefa06426fa391075e737ead84f2b3c8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.5/p6m-v0.7.5-macos-arm64.tar.gz"
      sha256 "e99535d14c7603b641a3007938d44c07abe118001a015b0e1d37ba7f616f2849"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end