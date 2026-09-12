# homebrew-tap

Homebrew tap for emux, multiplexing for coding agents.

The app, macOS:

```sh
brew tap easymux/tap && brew trust easymux/tap && brew install --cask easymux && xattr -dr com.apple.quarantine /Applications/emux.app
```

The `emux` command line, macOS and Linux:

```sh
brew install easymux/tap/emux
```

`brew trust` is required for any third-party tap. The `xattr` step is required
because emux is not notarized by Apple: without it macOS blocks the app on
first launch. Homebrew's `--no-quarantine` option no longer exists as of
Homebrew 6.

If you installed the app as the `emux` cask before, switch once:
`brew uninstall --cask emux && brew install --cask easymux`.
