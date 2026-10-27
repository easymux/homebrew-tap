class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.28"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.28/emux-linux-arm64"
    sha256 "819d83917ddc33e0d9700d46dc00402e8a73ff10b817440a8ffabe6b9acf7e86"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.28/emux-linux-x86_64"
    sha256 "ff2425bc355ad7dc6044532001ae18f92995d50e4dd78d8fda5ab69f49d40346"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
