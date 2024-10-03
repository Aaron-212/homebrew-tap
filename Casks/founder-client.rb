cask "founder-client" do
  version "1.1.4"
  sha256 "228fe2ccc2d0dad919bdfd072a22b97a0826a3a52c0999d9005bb06bea25cb23"

  url "https://cdn13.foundertype.com/fclient/pro/mac/#{version}/FounderClient_#{version}.dmg"
  name "Founder Client"
  name "方正字库"
  desc "Font client from FounderType"
  homepage "https://foundertype.com/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://www.foundertype.com/index.php/Index/ftXplorer"
    regex(/href_data=.*?FounderClient[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"
  
  caveats do
    requires_rosetta
  end

  app "方正字库.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/方正字库",
    "~/Library/Preferences/com.founder.FounderFont.plist",
    "~/Library/Saved Application State/com.founder.FounderFont.savedState",
  ]
end
