class Anchr < Formula
  desc "A fast terminal UI for browsing S3 and S3-compatible object storage"
  homepage "https://github.com/jackjakarta/anchr"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.0/anchr-darwin-arm64.tar.gz"
      sha256 "5f2964704decf503cd32ec1576741e03383bbefd51ebe2d912a47ace4b5feaf4"
    else
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.0/anchr-darwin-amd64.tar.gz"
      sha256 "051051454f888cc8499bfb64ad9b54ed875c3e0a2a990f8aee1fdfa50d4cfe4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.0/anchr-linux-arm64.tar.gz"
      sha256 "66d709d7bbd1b297f5c6652e46bc220b233d5bacac89b541002b0a1fce6b1d00"
    else
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.0/anchr-linux-amd64.tar.gz"
      sha256 "353cd9bf092fda63af799ebce2fd8a96eb480d6c20fe7d7d9dc6f5f4e87910f6"
    end
  end

  def install
    bin.install "anchr"
  end

  test do
    system "#{bin}/anchr", "-h"
  end
end
