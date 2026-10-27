cask "easymux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.29"
  sha256 arm:   "5ed7cd7ec276864f2b7dec50f7bfe6b5a42cab9b1898037ad4005496ea2efd68",
         intel: "cb5c111bdb17ab5decfc5e965f5bd8dee28ff7fe79e1f365b0774ce40ad13721"

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
