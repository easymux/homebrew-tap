class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.37"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.37/emux-linux-arm64"
    sha256 "cd41f74b729c5a6a27ccc3aff6a710594095d66c0723033f83fc2ebc491c0592"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.37/emux-linux-x86_64"
    sha256 "47c4f9e9d469079a17fbb70fd272b9310bf3668e2dbebd5d4e7112304bb58458"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
