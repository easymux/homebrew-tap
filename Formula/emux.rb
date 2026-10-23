class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.27"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.27/emux-linux-arm64"
    sha256 "e92e4c7de58de19cf422cda745bcd047200f24a7a840fe97e78215594f32109e"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.27/emux-linux-x86_64"
    sha256 "5ccd6b4e7954fdc18aafc3b47f361b14d18a6dcc1ae2b68671d08829ecdc2c90"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
