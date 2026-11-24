cask "easymux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.36"
  sha256 arm:   "0ea4dedbb1a4bbd041042e5f414169572de8e4a3888dcdd87d13dc7ea2cdf7ca",
         intel: "9c567f066e0102a01ab3bbd2d2631029db8e907c837e43a057b89eda845ae53d"

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
