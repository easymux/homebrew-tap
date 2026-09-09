cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.11"
  sha256 arm:   "045655b3b89ac2def32704a433be6c2b9565d3ab234bbe0dde0f64dcd98e6efe",
         intel: "11285616b5a567b7f7a3ddf916bc37ff3f335abd2446c16afdf24add61368390"

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
