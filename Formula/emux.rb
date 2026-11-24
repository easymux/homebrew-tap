class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.38"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.38/emux-linux-arm64"
    sha256 "1214d3fd21b3a35c56c1ec062fae1430a208f12e376e2e927d3793e3849762fb"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.38/emux-linux-x86_64"
    sha256 "c85698d930fc68ee60e1395ea148c65ef3be1ac8a95bcca6d3ffbf41ea625f29"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
