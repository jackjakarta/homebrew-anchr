class Anchr < Formula
  desc "A fast terminal UI for browsing S3 and S3-compatible object storage"
  homepage "https://github.com/jackjakarta/anchr"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.2/anchr-darwin-arm64.tar.gz"
      sha256 "0fef0a0e81f2b42081385fa080c0e06f7436c13de21491e2ad4539af9221cdc2"
    else
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.2/anchr-darwin-amd64.tar.gz"
      sha256 "a4df9163f6fab7342394314af52f2ecb626dfb92a16d6f46be2c16f8a1ae61d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.2/anchr-linux-arm64.tar.gz"
      sha256 "a2eae3e1c96c90e2fdd0ccbe712bb1a4677e95add2c2c0e720be96d4987b616e"
    else
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.2/anchr-linux-amd64.tar.gz"
      sha256 "36887ac0d871af9e39b1fadcb4505112bee3e6cf64b782157cff69758b1cbd6e"
    end
  end

  def install
    bin.install "anchr"
  end

  test do
    system "#{bin}/anchr", "-h"
  end
end
