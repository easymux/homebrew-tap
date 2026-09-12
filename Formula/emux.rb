class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.21"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.21/emux-linux-arm64"
    sha256 "bd8661817ba2a35d10e1aef1750e3bce279dacb921df5dffcb8a85e90066c7b0"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.21/emux-linux-x86_64"
    sha256 "c07bf42a8389af65e43438b04aacbab016186cfa6f4aa086ac2387d09ee9f26f"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
