class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.33"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.33/emux-linux-arm64"
    sha256 "ca5c2c7a5e60e0860ba10a89ed6e7a3eb667f68288f0e55a1f08ce4955421844"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.33/emux-linux-x86_64"
    sha256 "d6b718e17577081404f31a25dc133a496c50e9436fa96079a4acd7dd763ae25c"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
