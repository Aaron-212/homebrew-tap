cask "follow" do
  version "0.0.1-alpha.17"
  sha256 "c41445660987aa1801dacf53cefbcbd8d0924e5d02a10c8c92716c645bea3e42"

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
