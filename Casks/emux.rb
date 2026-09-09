cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.10"
  sha256 arm:   "f1f0e243472464865931446f08d2d0d9fd20c1a1a6796606e60f2f6781a058e8",
         intel: "932164ec2e5c2b7f21b4ebf2851b3b2af14bde75549d630beff8da510a343e86"

  url "https://github.com/easymux/homebrew-tap/releases/download/v#{version}/emux-#{version}-#{arch}.zip"
  name "emux"
  desc "Multiplexing for coding agents"
  homepage "https://github.com/easymux/homebrew-tap"

  depends_on macos: :big_sur

  app "emux.app"

  caveats <<~EOS
    emux is not notarized by Apple, so macOS blocks it on first launch.
    Lift the quarantine once:

      xattr -dr com.apple.quarantine /Applications/emux.app

    Or open System Settings > Privacy & Security and click "Open Anyway".
  EOS

  zap trash: [
    "~/Library/Application Support/emux",
    "~/Library/Preferences/dev.easymux.emux.plist",
    "~/Library/Saved Application State/dev.easymux.emux.savedState",
  ]
end
