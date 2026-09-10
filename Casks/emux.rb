cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "90953d13cbc55603ec3d7677e42183e31e8a723fd58db3c01be67f2e124d5ff8",
         intel: "8d3a174b9ad950ed70e046aaa5653c7e80a46f19252e35f03cc11cba6b16d95c"

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
