cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "d456aac08cc868d0fb91455b50cf6104fb95e32e217aebfac7d8dd6244c37439",
         intel: "a9c50b9edd25e24d69946811a26407c1156f6beff025adb17a5df3f46f42ecd8"

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
