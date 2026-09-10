cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.12"
  sha256 arm:   "17903aed1b1e1f69885e30dfb24002ea11451f8d7788240be59de6282663c2f9",
         intel: "63c63e748da5d1d18c17e0776c8d8cd4379cf867f702b0a15de1f04b1311858a"

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
