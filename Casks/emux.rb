cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16"
  sha256 arm:   "7ed62493b4f1e693e6e917bc4ab3cb5648bbc015cba3c56966a31712eb89530b",
         intel: "001aa151be4de0d8f64549068c6537b81ae65d0f26fc49531d94dc205df23912"

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
