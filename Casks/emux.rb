cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.8"
  sha256 arm:   "d1b0cedab97bf3497a47dfa1c8353a53be4a4693cb478cc5e57e8e949282d5f4",
         intel: "ce39415d32e082f23d97b11a975c0b481faa67b462c1c2531c547ed1faa700e2"

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
