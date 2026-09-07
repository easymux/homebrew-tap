cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "8fd745a8e63d82e261b3abc7204c1556d76245b02dce9e30e990059093034439",
         intel: "d2dd6b1e3c173f73b6a71c4eda0a0ab0ed7928d9349819cdd8fbaaa0c616087f"

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
