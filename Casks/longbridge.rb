cask "longbridge" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "f7a3a0edcd9f0b253e9f84f3e0ca99b288b38fac45a2e90e9438c4c783500614",
         intel: "1ba95f58722f616a3753f386124716679b99644c0436fc9480240de95aaa363f"

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
