class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.32"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.32/emux-linux-arm64"
    sha256 "9e888a2ea5756fd4f038fdc59ff3443c8f9f825ad9f1646ff2b1936f6ca77573"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.32/emux-linux-x86_64"
    sha256 "2bfbd15503d0736eb5316159885da1a242733b554370a86b2313696785eca160"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
