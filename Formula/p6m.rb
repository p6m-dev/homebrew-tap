class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.6.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.1/p6m-v0.6.1-linux-x86_64.tar.gz"
      sha256 "cd871bbe9371f9b13c3479a1c5953916fdc2d28cec7e68e3bd2e72626b002790"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.1/p6m-v0.6.1-macos-x86_64.tar.gz"
      sha256 "7f6e82c56ca453e49b7bfdea57b4c74e0c3611cf582e009706246c5a207feb50"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/v0.6.1/p6m-v0.6.1-macos-arm64.tar.gz"
      sha256 "7f6e82c56ca453e49b7bfdea57b4c74e0c3611cf582e009706246c5a207feb50"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end