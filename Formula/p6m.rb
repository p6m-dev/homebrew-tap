class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.9.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.9.1/p6m-v0.9.1-linux-x86_64.tar.gz"
      sha256 "3cb5a930579875c09e4618f0e376699f79ff7e00adc5951738d39c4c8c05823f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.9.1/p6m-v0.9.1-linux-arm64.tar.gz"
      sha256 "989abc451e31c01a3438c5ae5838b601c221f54aa7ef16d6ca95cd34984daaed"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.9.1/p6m-v0.9.1-macos-x86_64.tar.gz"
      sha256 "913e5851c8d8e3ee2d0cb7209d0d5a40a72c24b84533709ca5fc1d17b609a047"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.9.1/p6m-v0.9.1-macos-arm64.tar.gz"
      sha256 "294c57e8f337a5f3277f89dae5029ab148551c255a566ec74e16d4b2bd27dad2"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end