class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.6.3"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.3/p6m-v0.6.3-linux-x86_64.tar.gz"
      sha256 "7a3ef4ac689e242a6a109a7a9738c3668347489b00c8709a9c175e648917d782"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.3/p6m-v0.6.3-macos-x86_64.tar.gz"
      sha256 "0f7e653c1bf26d9755059fbdc5491e09a0701a92e6e7689a7826215425cd327d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.3/p6m-v0.6.3-macos-arm64.tar.gz"
      sha256 "0f7e653c1bf26d9755059fbdc5491e09a0701a92e6e7689a7826215425cd327d"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end