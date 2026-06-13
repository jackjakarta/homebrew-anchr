class anchr < Formula
  desc "A fast terminal UI for browsing S3 and S3-compatible object storage"
  homepage "https://github.com/jackjakarta/anchr"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.0/anchr-darwin-arm64.tar.gz"
      sha256 "6ebf393b68e6994c0fe01a0819fc56b06e89230591786104d24124a661071053"
    else
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.0/anchr-darwin-amd64.tar.gz"
      sha256 "39e611de132bab02161827947bf6dcea588e376b7bceed6b98ee927ae54490cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.0/anchr-linux-arm64.tar.gz"
      sha256 "1255f9fdd4ccc1bea2589f20164a2f6bb46343d1d764ab2aa594138c9df1732a"
    else
      url "https://github.com/jackjakarta/anchr/releases/download/0.2.0/anchr-linux-amd64.tar.gz"
      sha256 "1a33e219133132d6eafdab0d0ff433c8f13d9840cbece17882a873a9cab7d0a3"
    end
  end

  def install
    bin.install "anchr"
  end

  test do
    system "#{bin}/anchr", "-h"
  end
end
