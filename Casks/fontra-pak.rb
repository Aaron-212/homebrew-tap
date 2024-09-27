cask "fontra-pak" do
  version "20240927-0159"
  sha256 "84858568e31d29b58058c8e99049aa60a16a6d06564f9fb6b29381fc84af12de"

  url "https://fontra-download.black-foundry.com/FontraPak.dmg"
  name "Fontra Pak"
  homepage "https://fontra.xyz/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      timestamp = headers["last-modified"]
      next if timestamp.blank?

      original_time = Time.parse(timestamp.to_s)
      original_time.strftime("%Y%m%d-%H%M")
    end
  end

  depends_on macos: ">= :big_sur"

  app "Fontra Pak.app"

  zap trash: [
    "~/Library/Preferences/com.xyz-fontra.FontraPak.plist",
    "~/Library/Preferences/xyz.fontra.fontra-pak.plist",
    "~/Library/Saved Application State/xyz.fontra.fontra-pak.savedState",
  ]
end
