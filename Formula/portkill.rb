class Portkill < Formula
  desc "A CLI utility to terminate processes listening on a TCP port"
  homepage "https://github.com/bobbysmith/portkill"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.9/portkill-v0.1.9-aarch64-apple-darwin.zip"
      sha256 "0ea101fe250b7ca8d1c3bd613bbdf91bfd241597036eb4be15155602d7f15cd6"
    else
      url "https://github.com/bobbysmith/portkill/releases/download/v0.1.9/portkill-v0.1.9-x86_64-apple-darwin.zip"
      sha256 "b060ea87b096ebf19e54a9f4a69eb57bb9ff39292eece7419e5643f6ee7dd164"
    end
  end

on_linux do
    url "https://github.com/bobbysmith/portkill/releases/download/v0.1.9/portkill-v0.1.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "25a242a4971a87c461e6ae1bffc90302580fed3036699046cd86f9193ca0cd82"
  end

  def install
    bin.install "portkill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portkill --version")
  end
end
