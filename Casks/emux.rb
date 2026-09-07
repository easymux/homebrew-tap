cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.6"
  sha256 arm:   "d33fa7e84939c5e4b8a5cab0853af88cdd2490675f4551d1562f16f354435bad",
         intel: "b7094ce2943947fedfdeeb50cc0ede9ba41c98522255f3f5e71fc883321e8707"

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
