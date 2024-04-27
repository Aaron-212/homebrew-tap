cask "fontra-pak" do
  version :latest
  sha256 :no_check

  url "https://fontra-download.black-foundry.com/FontraPak.dmg"
  name "Fontra Pak"
  homepage "https://fontra.xyz/"

  depends_on macos: ">= :big_sur"

  app "Fontra Pak.app"

  zap trash: [
    "~/Library/Preferences/com.xyz-fontra.FontraPak.plist",
    "~/Library/Preferences/xyz.fontra.fontra-pak.plist",
    "~/Library/Saved Application State/xyz.fontra.fontra-pak.savedState",
  ]
end
