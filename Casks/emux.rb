cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.17"
  sha256 arm:   "a20e367288532041dc88ce1d61a996ffebc6442086dc4268e0d4983ce914baf1",
         intel: "eac308eb6e77be3077a83a499e3343d4ab10c8123c02f736efc8e0cb0e9e6ced"

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
