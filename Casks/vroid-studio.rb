cask "vroid-studio" do
  version "1.29.3,2tLE2KD3ES"
  sha256 "d387baa027aa45f8dff814fdb380c948887b715d29fa333429b799c12cf2468b"

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
