cask "easymux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.22"
  sha256 arm:   "45eb4d4ad8159aa24276e7ad6aa4ac4413eb58b71879ed5c72fdb2f4c2d5b766",
         intel: "189aeaee588fca536d5603f7333433c562a3c7fddd012858c77628358b62bf25"

  url "https://github.com/easymux/homebrew-tap/releases/download/v#{version}/emux-#{version}-#{arch}.zip"
  name "emux"
  desc "Multiplexing for coding agents"
  homepage "https://github.com/easymux/homebrew-tap"

  depends_on macos: :big_sur

  app "emux.app"
  binary "#{appdir}/emux.app/Contents/Resources/bin/emux-darwin-#{arch}", target: "emux"

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
