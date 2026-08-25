cask "graphest" do
  version "1.8.2"
  sha256 "d420864fab1f93980ada79a7662b484884ac7c6b79e784f15d3d04cfabd7fee1"

  url "https://github.com/unageek/graphest/releases/download/v#{version}/Graphest-#{version}-arm64.dmg"
  name "Graphest"
  desc "Graphing software based on interval arithmetics"
  homepage "https://github.com/unageek/graphest"

  livecheck do
    url "https://github.com/unageek/graphest/releases"
    strategy :github_latest
  end

  depends_on macos: ">= 12.0"

  app "Graphest.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.github.unageek.graphest.sfl*",
    "~/Library/Application Support/graphest",
    "~/Library/Preferences/io.github.unageek.graphest.plist",
  ]
end
