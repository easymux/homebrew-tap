class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.22"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.22/emux-linux-arm64"
    sha256 "21147d600f2234db7deadfd32cafa5406454ed7c808468ce750a085dc0b784fd"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.22/emux-linux-x86_64"
    sha256 "444368bd1be95989c3c3d8d849a1766cd8195304fea5202732928d39d0881c4d"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
