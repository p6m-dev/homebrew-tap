class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.6.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.0/p6m-v0.6.0-linux-x86_64.tar.gz"
      sha256 "084ea6ea3f3ad5eb5519f8cc58d457d357def01c4b8e39076c31c2cf3e31d6bd"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.0/p6m-v0.6.0-macos-x86_64.tar.gz"
      sha256 "e157ebd6362e8582d6ebf4a85afbfdf56425ffd63987dae67f958b189e7cfd41"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.0/p6m-v0.6.0-macos-arm64.tar.gz"
      sha256 "e157ebd6362e8582d6ebf4a85afbfdf56425ffd63987dae67f958b189e7cfd41"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end