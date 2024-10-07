cask "follow" do
  version "0.0.1-alpha.19"
  sha256 "6eb62880c691ae74708f2ba9f57a3115db6d559c5f02e96117e6c242ab19d113"

  url "https://github.com/RSSNext/Follow/releases/download/v#{version}/Follow-#{version}-macos-universal.dmg",
      verified: "github.com/RSSNext/Follow/"
  name "Follow"
  desc "Next-Gen Information Browser"
  homepage "https://follow.is/"

  livecheck do
    url "https://github.com/RSSNext/Follow/"
    regex(/^v?(\d+(?:\.\d+)+(-(alpha|beta)\.\d+)?)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Follow.app"

  zap trash: ""

  caveats "Requires a invitation code to use."
end
