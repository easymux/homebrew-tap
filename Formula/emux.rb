class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.24"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.24/emux-linux-arm64"
    sha256 "6e2801be0b3c7a0171089914cade24c773f920309e53ea7981ee87f2a40240de"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.24/emux-linux-x86_64"
    sha256 "d614527ee677270e1bbc1a0791c01ace9ef8c1b4fb66e0dc7c581b0a2c364c71"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
