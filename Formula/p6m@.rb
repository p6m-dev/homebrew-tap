class P6mAT0_9_0 < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.9.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.9.0/p6m-v0.9.0-linux-x86_64.tar.gz"
      sha256 "c2dd42adcd9ce49db80d49a333d227bd7f1c555266ea2aff1bec9a3b48ca37f0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.9.0/p6m-v0.9.0-linux-arm64.tar.gz"
      sha256 "a64e355224cdd2060f986b1cb0227f46d94afb495dc5b7b11b5d4e2eae042b5d"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.9.0/p6m-v0.9.0-macos-x86_64.tar.gz"
      sha256 "20b74dcd517355a342adb08315d98b9c43d31c85e970912b8ed70d22f1d245e2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.9.0/p6m-v0.9.0-macos-arm64.tar.gz"
      sha256 "93e656ff1be794cd7e8856e9c37a4001e333f2fee44fac212e574ac81e75b09e"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end