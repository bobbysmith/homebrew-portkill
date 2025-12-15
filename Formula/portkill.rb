class Portkill < Formula
  desc "A CLI utility to terminate processes listening on a TCP port"
  homepage "https://github.com/bobbysmith/portkill"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.6/portkill-v0.1.6-aarch64-apple-darwin.zip"
      sha256 "290120637e1e5dbbe2fa83bad78b71985be1dc98e857b7eec9539e19ad96f718"
    else
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.6/portkill-v0.1.6-x86_64-apple-darwin.zip"
      sha256 "e0bdcfe0c5aa412151f86e67992dd3bef2a8e0584e2b3e1a52bc23acc06aaa27"
    end
  end

on_linux do
    url "https://github.com/bobbysmith/portkill/releases/download/v0.1.6/portkill-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a1739495caa8d8460fe2068320261632f5dc9b14bec02e4d2c651852242327d6"
  end

  def install
    bin.install "portkill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portkill --version")
  end
end
