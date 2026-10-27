class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.29"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.29/emux-linux-arm64"
    sha256 "090c9dff081b4f186c3ddbe62642c8bf66f3cf1c3fdaa3b24748285cd8d0b28a"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.29/emux-linux-x86_64"
    sha256 "79fabd5e92d46c73f0e4f08ef9d7ee8d4901f9299a5a5c89010b4d95b19b32b5"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
