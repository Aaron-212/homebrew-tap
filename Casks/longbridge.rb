cask "longbridge" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.10.0"
  sha256 arm:   "ef5c558f4f3671280e0070da3e9589f1ef99b0beccdcce54e9943d2dc0d69532",
         intel: "f38a6ca5b1698ff5cf5c3977e1f819b3279dfeedf6260649186b8c814cc1ec68"

  url "https://assets.lbctrl.com/github/release/longbridge-desktop/stable/longbridge-v#{version}-macos-#{arch}.dmg",
      verified: "assets.lbctrl.com/github/release/longbridge-desktop/"
  name "Longbridge"
  desc "GPUI based professional securities trading desktop application"
  homepage "https://longbridge.com/desktop/"

  livecheck do
    url :homepage
    regex(/href=.*?longbridge[._-]v?(\d+(?:\.\d+)+)-macos-#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Longbridge.app"

  zap trash: [
    "~/Library/Application Support/Longbridge",
    "~/Library/Logs/Longbridge",
    "~/Library/WebKit/global.longbridge.app.desktop",
  ]
end
