cask "gt-brew-manager" do
  version "1.0.7-57"
  sha256 "18bb3a54ea803647c157ccde22abe325ec223033ae71803cd9b9b5b61be12ce8"

  url "https://github.com/getangar/homebrew-gtbrewmanager/releases/download/v1.0.7-57/GT.Brew.Manager.dmg"
  name "GT Brew Manager"
  desc "Native macOS GUI for Homebrew formulae, casks and services"
  homepage "https://github.com/getangar/GTBrewManager"

  app "GT Brew Manager.app"

  zap trash: [
    "~/Library/Application Support/GTBrewManager",
    "~/Library/Preferences/com.gennarotangari.GTBrewManager.plist",
  ]
end
