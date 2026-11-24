cask "easymux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.37"
  sha256 arm:   "dbc6776740e00a9c655f3e021500a204c0d6a68f657f9bf329d62f4ce57e01bc",
         intel: "76673dde2e3e86f7a1ec6b8a9cfc1b260e18c65682d464ec34b462231d01648a"

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
