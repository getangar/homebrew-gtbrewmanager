cask "gt-brew-manager" do
  version "1.0-43"
  sha256 "43d1cd92e202a5a5776e96aef8fc9abf951f0de87935510fc3187f044216f171"

  url "https://github.com/getangar/homebrew-gtbrewmanager/releases/download/v1.0.1-50/GT.Brew.Manager.dmg"
  name "GT Brew Manager"
  desc "Native macOS GUI for Homebrew formulae, casks and services"
  homepage "https://github.com/getangar/GTBrewManager"

  app "GT Brew Manager.app"

  zap trash: [
    "~/Library/Application Support/GTBrewManager",
    "~/Library/Preferences/com.gennarotangari.GTBrewManager.plist",
  ]
end
