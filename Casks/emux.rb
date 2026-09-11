cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "a4e88d3b42d72bb7dfb0db04f78241e49add3ee5c15854d8b10e286da43cf95b",
         intel: "017d4b1eec8bf1db77032d438efac5137c006d4b9f8c1059b1975bb50fd8f6a0"

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
