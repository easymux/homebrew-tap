cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "7400b5386c85da0c48a4833005d4203652cf2daf4e61ab821da03f06867cea03",
         intel: "91bd4f41cfd186c5879fb1ea8453a88b1d84f0d5c9fbd4e31bb5e971c52e761c"

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
