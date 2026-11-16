class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.35"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.35/emux-linux-arm64"
    sha256 "3fbe40350cdac674d8aa930e0e46c5aa29b7c02ae24c60bf5e1b86820765c920"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.35/emux-linux-x86_64"
    sha256 "22d904a387874b43222ca2ce5ad764c0fd5aa4d502c04071fb0c55ae043e3bc6"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
