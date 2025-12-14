class Portkill < Formula
  desc "A CLI utility to terminate processes listening on a TCP port"
  homepage "https://github.com/bobbysmith/portkill"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.3/portkill-v0.1.3-aarch64-apple-darwin.zip"
      sha256 "2366e0bdba20e7c7ef7616f1a3e0b1cc31db67c5d7ccaa9e3331766dc8d113c3"
    else
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.3/portkill-v0.1.3-x86_64-apple-darwin.zip"
      sha256 "ee24cdc444d380975a97cccc9202fab426b4d8f7e722675fa5f4e379e9f2688f"
    end
  end

on_linux do
    url "https://github.com/bobbysmith/portkill/releases/download/v0.1.3/portkill-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c318bdf1cb3320fa04d1d0756614f7ad957a87e4eb642b9cc9b09080582c9f5c"
  end

  def install
    bin.install "portkill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portkill --version")
  end
end
