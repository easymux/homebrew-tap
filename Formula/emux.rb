class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.25"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.25/emux-linux-arm64"
    sha256 "97ca6ae4338279c2358642bf125917f1559f91ec02d4d7a8434acc5576a196ef"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.25/emux-linux-x86_64"
    sha256 "5637602be6d77528151007b8be23881ee3c776fe2a4d43eb7c0a8c654e3accb3"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
