cask "easymux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.24"
  sha256 arm:   "3b6803a3b2955ca6e02409598feb6933808dd3bf1599f2b767b2518c00915252",
         intel: "156bab70afd627e7de6fcc3f3716cf8b936ea9eee4f021f15be74f123ca3bf1b"

  url "https://github.com/easymux/homebrew-tap/releases/download/v#{version}/emux-#{version}-#{arch}.zip"
  name "emux"
  desc "Multiplexing for coding agents"
  homepage "https://github.com/easymux/homebrew-tap"

  depends_on macos: :big_sur

  app "emux.app"
  binary "#{appdir}/emux.app/Contents/Resources/bin/emux-darwin-#{arch}", target: "emux"

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
