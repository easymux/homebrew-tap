class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.30"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.30/emux-linux-arm64"
    sha256 "a7a723eacfc9bd25bbc1b41a81d7eab1ee9165f36359e43b918a78585633c363"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.30/emux-linux-x86_64"
    sha256 "b621567f83688accf1e2a85900d9dd4b49f8dd706e771675efceb0410d70453a"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
