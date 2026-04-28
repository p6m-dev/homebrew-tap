class P6mAT0_10_0 < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.10.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.10.0/p6m-v0.10.0-linux-x86_64.tar.gz"
      sha256 "fc9a2d1877944842266e1d0ba655e09c7a5d921ab0497d4b4da1acd1273bd0d0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.10.0/p6m-v0.10.0-linux-arm64.tar.gz"
      sha256 "4d9c12bf99c3dc9a6141aeaf54677c4fb6df3e4b5ad8d6930024b0a4b9e85b97"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.10.0/p6m-v0.10.0-macos-x86_64.tar.gz"
      sha256 "aec5e08bfdea10fbf241658699af43f5e57fe2748c334e00c751a581010f43dc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.10.0/p6m-v0.10.0-macos-arm64.tar.gz"
      sha256 "127673b95f805e799f0098252c74d42dfac594000450ab6385653441f950f75b"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end