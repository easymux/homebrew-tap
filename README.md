# homebrew-tap

Homebrew tap for emux, multiplexing for coding agents.

```sh
brew tap easymux/tap && brew trust easymux/tap && brew install --cask emux && xattr -dr com.apple.quarantine /Applications/emux.app
```

`brew trust` is required for any third-party tap. The `xattr` step is required
because emux is not notarized by Apple: without it macOS blocks the app on
first launch. Homebrew's `--no-quarantine` option no longer exists as of
Homebrew 6.
