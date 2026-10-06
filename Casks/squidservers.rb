cask "squidservers" do
  version "0.9.11"
  sha256 "66520fdcf3776be75a0424ae0cd8a180d835b51051b0cc63d9ce68845f8b5aa3"

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
