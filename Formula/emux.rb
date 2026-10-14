class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.26"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.26/emux-linux-arm64"
    sha256 "89cc3df32b16b755927d50a047aee27203f1f11997383a50994d20ac15fbe1c6"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.26/emux-linux-x86_64"
    sha256 "84a7e5f87a267f80e1698c7e9af45b04b827b4d08bff286b001db1f373007e9e"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
