cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15"
  sha256 arm:   "5f544dcce54f97c4df5f3ad96443cc5fd8729992dfacae62ccbab2810dcbdde9",
         intel: "078a3b036980ed89730593beb8913d785b6e8dc9d7bd48f88ee4f8745685ce04"

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
