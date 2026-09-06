# homebrew-tap

Homebrew tap for [emux](https://github.com/easymux/homebrew-tap), multiplexing for coding agents.

```sh
brew tap easymux/tap
brew install --cask --no-quarantine emux
```

emux is not notarized by Apple, so `--no-quarantine` is required. Without it
macOS blocks the app at launch.
