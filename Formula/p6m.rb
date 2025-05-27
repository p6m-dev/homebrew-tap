class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.7.3"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.3/p6m-v0.7.3-linux-x86_64.tar.gz"
      sha256 "891fe7255e7b023402194a9b675c282930618a0237d59556288c6b619da0b191"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.3/p6m-v0.7.3-macos-x86_64.tar.gz"
      sha256 "059306a96a72a6882a8bdaee227cb0a911fb387849ebb8321f48125c784ab935"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.7.3/p6m-v0.7.3-macos-arm64.tar.gz"
      sha256 "059306a96a72a6882a8bdaee227cb0a911fb387849ebb8321f48125c784ab935"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end