cask "vroid-studio" do
  version "2.11.0,tEuggsKrtY"
  sha256 "05872bb53f0edc27f5d6c3c1ab01e57a445123126be7addd509816b37e2f7b87"

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

  depends_on macos: ">= :big_sur"

  app "VRoidStudio.app"

  zap trash: "~/Library/Containers/net.pixiv.vroid.macosx"
end
