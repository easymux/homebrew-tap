class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.36"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.36/emux-linux-arm64"
    sha256 "4ad406cb05a1039c56725ff8c68ee1eddbae39226cb1aeb751670850a748b910"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.36/emux-linux-x86_64"
    sha256 "154ef3f21806a37655d7c2298b45a9e76803fa3d98f84c623a76f96769f80543"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
