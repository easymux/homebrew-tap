class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.23"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.23/emux-linux-arm64"
    sha256 "50f5d17108b49ed22ec96b21febaeb101086cb36cf525262d8261e82f029ca0f"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.23/emux-linux-x86_64"
    sha256 "2ab583d3b4042120221080c3e6170aae0aa1a129d173e8fa1e61f5b84dbc7626"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
