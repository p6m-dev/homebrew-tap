class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.4.16"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.4.16/p6m-v0.4.16-linux-x86_64.tar.gz"
      sha256 "20cef4bebf4923189cf0f41f79784811ac4d092eb9c062816baa523d49cfe146"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.4.16/p6m-v0.4.16-macos-x86_64.tar.gz"
      sha256 "4a74fdfad685dbf54845ac2c52f02b3b47fa8901b14c01dc95e84597b7a6c1e8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.4.16/p6m-v0.4.16-macos-arm64.tar.gz"
      sha256 "4a74fdfad685dbf54845ac2c52f02b3b47fa8901b14c01dc95e84597b7a6c1e8"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end