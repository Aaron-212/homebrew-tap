cask "vroid-studio" do
  version "2.1.0,KdAyF4vFok"
  sha256 "551a6b628a20238b4be9b69e0f1c1b314a638846b9c29e1c695322e22c9a4db5"

  url "https://download.vroid.com/dist/#{version.csv.second}/VRoidStudio-v#{version.csv.first}-mac.dmg"
  name "VRoid-Studio"
  desc "3D Character Creation Software"
  homepage "https://vroid.com/en/studio"

  livecheck do
    url :homepage
    regex(%r{href=.*?([a-zA-Z0-9]{10})/VRoidStudio[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg}i)

    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "VRoidStudio.app"

  zap trash: "~/Library/Containers/net.pixiv.vroid.macosx"
end
