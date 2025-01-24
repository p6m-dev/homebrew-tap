class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.5.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.5.0/p6m-v0.5.0-linux-x86_64.tar.gz"
      sha256 "4251a4cb6883bdfe4a16ad7ffff542d7079a0cddc1c9465e97c9cc1be7499576"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.5.0/p6m-v0.5.0-macos-x86_64.tar.gz"
      sha256 "ecdc3e2fab9cc2fa152cbf38db80e7028fec57e336598323e086189703df7630"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.5.0/p6m-v0.5.0-macos-arm64.tar.gz"
      sha256 "ecdc3e2fab9cc2fa152cbf38db80e7028fec57e336598323e086189703df7630"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end