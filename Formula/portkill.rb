class Portkill < Formula
  desc "A CLI utility to terminate processes listening on a TCP port"
  homepage "https://github.com/bobbysmith/portkill"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.7/portkill-v0.1.7-aarch64-apple-darwin.zip"
      sha256 "16a567ba5ae1813b1cf7dbd96396237371bb43f1b81325c2e1e7e495fdf0f1c5"
    else
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.7/portkill-v0.1.7-x86_64-apple-darwin.zip"
      sha256 "5c14ccea928a3556dbc2bbaf8acf28859d21892d6c9f2ec1764a2271718b4c83"
    end
  end

on_linux do
    url "https://github.com/bobbysmith/portkill/releases/download/v0.1.7/portkill-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6787ea655290e8673896a6085f4e62c0fea5d75b953bbf2e02648ac1029ee7bc"
  end

  def install
    bin.install "portkill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portkill --version")
  end
end
