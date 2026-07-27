cask "gt-brew-manager" do
  version "1.0.5-55"
  sha256 "a15bdf8086c971b8829a4a03ebf5248581aed82d400684e9a5a6055976bc1c77"

  url "https://github.com/getangar/homebrew-gtbrewmanager/releases/download/v1.0.5-55/GT.Brew.Manager.dmg"
  name "GT Brew Manager"
  desc "Native macOS GUI for Homebrew formulae, casks and services"
  homepage "https://github.com/getangar/GTBrewManager"

  app "GT Brew Manager.app"

  zap trash: [
    "~/Library/Application Support/GTBrewManager",
    "~/Library/Preferences/com.gennarotangari.GTBrewManager.plist",
  ]
end
