cask "gt-brew-manager" do
  version "1.0-43"
  sha256 "d258ecf5ffbf3a12217ad5f4567732610c329dde0bc10b6c61961149bd5e38d9"

  url "https://github.com/getangar/homebrew-gtbrewmanager/releases/download/v1.0-43/GT.Brew.Manager.dmg"
  name "GT Brew Manager"
  desc "Native macOS GUI for Homebrew formulae, casks and services"
  homepage "https://github.com/getangar/GTBrewManager"

  app "GT Brew Manager.app"

  zap trash: [
    "~/Library/Application Support/GTBrewManager",
    "~/Library/Preferences/com.gennarotangari.GTBrewManager.plist",
  ]
end
