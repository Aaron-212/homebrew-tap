cask "longbridge" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "fcf91213bf62767be0beda51bf9601a10d51f1fdaacefbb1c509f55d75402213",
         intel: "bbd2a2565b740094bdc754c99e039372143efebe1bae8e7c0877248aa604bf35"

  url "https://assets.lbctrl.com/github/release/longbridge-desktop/stable/longbridge-v#{version}-macos-#{arch}.dmg",
      verified: "assets.lbctrl.com/github/release/longbridge-desktop/"
  name "Longbridge"
  desc "GPUI based professional securities trading desktop application"
  homepage "https://longbridge.com/desktop/"

  livecheck do
    url :homepage
    regex(/href=.*?longbridge[._-]v?(\d+(?:\.\d+)+)-macos-#{arch}\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "Longbridge.app"

  zap trash: [
    "~/Library/Application Support/Longbridge",
    "~/Library/Logs/Longbridge",
    "~/Library/WebKit/global.longbridge.app.desktop",
  ]
end
