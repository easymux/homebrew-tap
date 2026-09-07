cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "a8591ea87bc38d48a69e7283be9c75541bc48f62991acbcf70b73181e9fc813c",
         intel: "e5a030f74b0627f3db2c2fe854c1581c217e3b11fd3ad7794ad5de8058d0199b"

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
