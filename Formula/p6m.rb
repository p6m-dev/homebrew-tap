class P6m < Formula
  desc "p6m CLI"
  homepage "https://github.com/p6m-dev/p6m-cli"
  version "0.4.15"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/0.4.15/p6m-0.4.15-linux-x86_64.tar.gz"
      sha256 "8c5214c68efdfdd84f6faf3ee65d376baf92139bc4488fbd245fa411bb047e66"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/0.4.15/p6m-0.4.15-macos-x86_64.tar.gz"
      sha256 "f61de30831a2b74142b645d52cd20dc60758bf9ad15968e93c11abbae56625b8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/p6m-dev/p6m-cli/releases/download/0.4.15/p6m-0.4.15-macos-arm64.tar.gz"
      sha256 "f61de30831a2b74142b645d52cd20dc60758bf9ad15968e93c11abbae56625b8"
    end
  end

  def install
    bin.install "p6m"
  end

  test do
    system "#{bin}/p6m --version"
  end

end