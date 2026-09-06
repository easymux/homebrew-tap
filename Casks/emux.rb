cask "emux" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "e8dc6cd3043f65207159a6e2b82ac6023b3dc70ecc54969fe132cb172a6493a2",
         intel: "a8f65b04e9f8976747568f0f4a31347f532fd59d7ab31b6d4dbe076a513c95a4"

  url "https://github.com/easymux/homebrew-tap/releases/download/v#{version}/emux-#{version}-#{arch}.zip"
  name "emux"
  desc "Multiplexing for coding agents"
  homepage "https://github.com/easymux/homebrew-tap"

  depends_on macos: ">= :big_sur"

  app "emux.app"

  caveats <<~EOS
    emux is not notarized. If it refuses to open, reinstall with:

      brew install --cask --no-quarantine emux
  EOS

  zap trash: [
    "~/Library/Application Support/emux",
    "~/Library/Preferences/dev.easymux.emux.plist",
    "~/Library/Saved Application State/dev.easymux.emux.savedState",
  ]
end
