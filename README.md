# homebrew-recmeet

Homebrew cask for [recmeet](https://github.com/Putzeys/Recmeet) — a native
macOS / Windows app that records your microphone and system audio at the
same time, with no virtual audio drivers required.

## Install

```sh
brew install --cask Putzeys/recmeet/recmeet
```

That's the one-liner: it auto-discovers this tap, downloads the latest
DMG, and copies the app into `/Applications` with the quarantine flag
removed (so no Gatekeeper warning).

To upgrade later:

```sh
brew upgrade --cask recmeet
```

To uninstall (and clear cached files / preferences):

```sh
brew uninstall --cask --zap recmeet
```

## Why this exists

The DMG on the [main repo's releases page](https://github.com/Putzeys/Recmeet/releases/latest)
is **ad-hoc signed**, not Apple-notarized — so a direct download triggers
the *"can't be verified for malicious software"* dialog. Homebrew strips
the quarantine attribute on cask install, so users that go through `brew`
skip that step entirely.

## Updating this cask

Each new recmeet release:

```sh
shasum -a 256 recmeet-macos.dmg
# bump version + sha256 in Casks/recmeet.rb, commit, push
```

The main repo's auto-updater also keeps app-installed copies fresh, so
this tap is mainly for first-install discoverability.
