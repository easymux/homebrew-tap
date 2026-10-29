class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.34"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.34/emux-linux-arm64"
    sha256 "38b261f1981515096c9ce14b41c20431a261ba56cc84bb27b8a6b98c4887c552"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.34/emux-linux-x86_64"
    sha256 "d69f598cdbf344aa79357bab6760fa2f77ae3233aa3fc71bdcde36131f314930"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
