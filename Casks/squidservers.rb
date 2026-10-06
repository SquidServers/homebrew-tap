cask "squidservers" do
  version "0.9.11"
  sha256 :no_check

  url "https://cdn.squidservers.com/squidservers-latest.dmg"
  name "SquidServers"
  desc "Simple local Minecraft server hosting"
  homepage "https://squidservers.com/"

  livecheck do
    url "https://cdn.squidservers.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "SquidServers.app"

  zap trash: [
    "~/Library/Application Support/squidservers",
    "~/Library/Logs/squidservers",
    "~/Library/Preferences/com.squidservers.app.plist",
    "~/Library/Saved Application State/com.squidservers.app.savedState",
  ]
end
