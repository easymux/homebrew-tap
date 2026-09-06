# homebrew-tap

Homebrew tap for emux, multiplexing for coding agents.

```sh
brew tap easymux/tap
brew trust easymux/tap
brew install --cask --no-quarantine emux
```

`brew trust` is required for any third-party tap. `--no-quarantine` is required
because emux is not notarized by Apple: without it macOS blocks the app at
launch.
