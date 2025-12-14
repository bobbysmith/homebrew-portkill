class Portkill < Formula
  desc "A CLI utility to terminate processes listening on a TCP port"
  homepage "https://github.com/bobbysmith/portkill"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.4/portkill-v0.1.4-aarch64-apple-darwin.zip"
      sha256 "3f74f93f163b659e72d4dbec887ff4dd2b41854056b1d0640677d65aa4f85a27"
    else
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.4/portkill-v0.1.4-x86_64-apple-darwin.zip"
      sha256 "9f3930438d644ca4d6b100773c5851e6379b4a8749cfbc69cb3e8a56e5ff0ebb"
    end
  end

on_linux do
    url "https://github.com/bobbysmith/portkill/releases/download/v0.1.4/portkill-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5b4ece5937f62f65b9466f8cdf32aeb00ebedd7f2b6fd04a2cce24aa90ff8be5"
  end

  def install
    bin.install "portkill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portkill --version")
  end
end
