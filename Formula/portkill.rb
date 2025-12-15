class Portkill < Formula
  desc "A CLI utility to terminate processes listening on a TCP port"
  homepage "https://github.com/bobbysmith/portkill"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.5/portkill-v0.1.5-aarch64-apple-darwin.zip"
      sha256 "a94651086edc9e5e7f0baeb7c3cfb7e9db6fa39c18b421adcac13e1f713a7abe"
    else
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.5/portkill-v0.1.5-x86_64-apple-darwin.zip"
      sha256 "e6987412371da01668a2c9a8fff0558632bd0ba65092685ba7fc089d0e5f97a7"
    end
  end

on_linux do
    url "https://github.com/bobbysmith/portkill/releases/download/v0.1.5/portkill-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "330849b998b95541fa706c3a8da475041653b0fc4270b0a819202194ad5f3abb"
  end

  def install
    bin.install "portkill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portkill --version")
  end
end
