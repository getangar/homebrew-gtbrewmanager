# GT Brew Manager

A native SwiftUI GUI for managing [Homebrew](https://brew.sh) formulae, casks, and services on macOS, with a Liquid Glass native design.

## Installation

```bash
brew tap getangar/gtbrewmanager
brew trust getangar/gtbrewmanager
brew install --cask gt-brew-manager
```

Requires macOS and [Homebrew](https://brew.sh) already installed.

## Features

**Formulae**

<img width="1228" height="873" alt="image" src="https://github.com/user-attachments/assets/65cfd380-3a31-46ca-bd5a-480cd6d88a88" />

- Browse the full Homebrew formula catalogue (7,000+ packages), fetched from the [Homebrew Formulae API](https://formulae.brew.sh/api/formula.json) and cached locally for one hour
- Search by name or description; filter by installation state (All / Installed / Update Available / Not Installed)
- See install status, installed/latest version, homepage, license, and dependencies for a selected formula
- Install, upgrade, and remove formulae
- Double-click a formula to pin it in its own tab; right-click for a context menu (Open in Tab / Show Dependency Graph)
- Run `brew update` and `brew upgrade` (all formulae) from the toolbar

**Casks**

<img width="1228" height="873" alt="image" src="https://github.com/user-attachments/assets/1f174ec8-d199-4e99-8bb7-f1e02f6c0f05" />

- Browse the full Homebrew Cask catalogue (macOS apps), loaded on first visit to the tab
- Search, filter by state, install, upgrade, and remove casks; upgrade all outdated casks in one action
- Third-party tap casks are included alongside the official catalogue

**Services**

<img width="1228" height="873" alt="image" src="https://github.com/user-attachments/assets/190e2005-15b8-4492-84e5-595d9ce4c5cd" />

- Browse all `brew services` with live status (running / stopped / error), autostart state, user, and PID
- Start, stop, restart, or run a service once without registering it for autostart

**Dependency Graph**

<img width="1222" height="805" alt="image" src="https://github.com/user-attachments/assets/f97a978d-8b0c-495d-a932-58762e0b203e" />

- Opens as a standalone window for any formula or cask
- Interactive canvas: pan, pinch/scroll-wheel zoom, draggable nodes
- Shows direct dependencies and reverse-dependencies (packages that depend on it)
- Double-click any node on the canvas or in the left-panel list to re-root the graph on that package
- Navigation history with back / forward / home toolbar buttons
- Status bar showing dependency and dependent counts and current zoom level

**Tools**

- **Brew Doctor** — run `brew doctor` with a healthy/warning summary and full raw output
- **Tap Manager** — list, add, and remove Homebrew taps
- **Brew Cleanup** — dry-run preview of space recoverable, then one-click permanent cleanup
- **Console drawer** — bottom panel that streams live `brew` output for all long-running commands

**Other**

- Native macOS Liquid Glass design (`NavigationSplitView`, `.buttonStyle(.glass)`, sidebar search)
- Guides you to install Homebrew if it isn't found, with a one-click retry
- Localized in English, German, French, and Italian

## How it works

GT Brew Manager shells out to your local `brew` binary (via `Process`) for installs, upgrades, removals, update checks, service management, Brew Doctor, and tap management, and reads the Homebrew Cellar/Caskroom directly to determine what's installed. Because it spawns subprocesses, the app runs with App Sandbox disabled.

## License

Copyright (c) 2026 Gennaro Eduardo Tangari. All rights reserved.

Licensed under [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/) — see [LICENSE](LICENSE). You're free to download and share unmodified copies of the app; modification, reverse-engineering, and commercial redistribution are not permitted. Provided "as is", with no warranty — use it at your own risk.
