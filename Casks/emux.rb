cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "e9c8c3bd8420abc6121cc819b5ba77b208a666b68efc60800aab44cf602a9619",
         intel: "1148225b24e03a3757a1d1f1aee0d0a7ed9e691e920560506641bcb27fe68cfc"

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
