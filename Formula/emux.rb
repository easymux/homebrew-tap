class Emux < Formula
  desc "Command line for emux: open a repo in the app"
  homepage "https://github.com/easymux/homebrew-tap"
  version "0.1.39"
  license :cannot_represent

  depends_on :linux

  on_arm do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.39/emux-linux-arm64"
    sha256 "cac8ba0e9e3ad21b88bd625316af3a6cbaa5f3a86596623767106d228672b147"
  end
  on_intel do
    url "https://github.com/easymux/homebrew-tap/releases/download/v0.1.39/emux-linux-x86_64"
    sha256 "664dd2dff19b57cfe33d29e2df6859ebb39ca6c5f3af8e56ddb2ea0d0056e324"
  end

  def install
    bin.install Dir["emux-*"].first => "emux"
  end

  test do
    assert_match "usage", shell_output("#{bin}/emux -h 2>&1")
  end
end
