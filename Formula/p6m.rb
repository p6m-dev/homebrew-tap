class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.4.6"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.4.6/p6m-v0.4.6-linux-x86_64.tar.gz"
      sha256 "cc34141c5941b8d0501707af74771d24bde8b28cd34536af8a1aa428ed809049"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.4.6/p6m-v0.4.6-macos-arm64.tar.gz"
      sha256 "47ce9c2fa78007ee11d2cdbb9aa1bae927bccdd36b7826031d512a1b4b46a51a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.4.6/p6m-v0.4.6-macos-arm64.tar.gz"
      sha256 "47ce9c2fa78007ee11d2cdbb9aa1bae927bccdd36b7826031d512a1b4b46a51a"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end