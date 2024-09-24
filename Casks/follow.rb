cask "follow" do
  version "0.0.1-alpha.13"
  sha256 "501c4d2a945c595bed952270cb8a28a9475e044b1db622166cd137b44d4d80e6"

  url "https://github.com/RSSNext/Follow/releases/download/v#{version}/Follow-#{version}-macos-universal.dmg"
  name "Follow"
  desc "Next-Gen Information Browser"
  homepage "https://follow.is/"

  livecheck do
    url "https://github.com/RSSNext/Follow/"
    regex(/^v?(\d+(?:\.\d+)+(\-(alpha|beta)\.\d+)?)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :big_sur"
  
  app "Follow.app"
  
  caveats "Requires a invitation code to use."

  zap trash: ""
end
