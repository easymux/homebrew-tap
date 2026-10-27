class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.31"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.31/emux-linux-arm64"
    sha256 "10d2ae072609dc5a08c3dbdd7a27f366dabb269a623ebac70b6e9e3393834154"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.31/emux-linux-x86_64"
    sha256 "ea7a28f61b0bb922d72a457d661003eb7f27d8a703088831b884f4f8f64eea80"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
