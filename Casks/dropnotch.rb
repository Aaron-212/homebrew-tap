cask "dropnotch" do
  version "1.0.1"
  sha256 :no_check

  url "https://junebytes.com/downloads/DropNotch.dmg"
  name "DropNotch"
  desc "Turns the MacBook notch into a drop zone"
  homepage "https://junebytes.com/dropnotch"

  livecheck do
    url "https://junebytes.com/updates/dropnotch.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "DropNotch.app"

  zap trash: [
    "~/Library/Application Support/com.junebytes.DropNotch",
    "~/Library/Caches/com.junebytes.DropNotch",
    "~/Library/HTTPStorages/com.junebytes.DropNotch",
    "~/Library/Preferences/com.junebytes.DropNotch.plist",
  ]
end
