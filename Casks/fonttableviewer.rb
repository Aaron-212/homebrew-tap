cask "fonttableviewer" do
  version "1.3-25"
  sha256 "74646bd277e88fd454ce81acca46b2c3dd19235be0d41d5a92da48916639024c"

  url "https://updates.glyphsapp.com/FontTableViewer/latest.php"
  name "Font Table Viewer"
  desc "Viewing and comparing OpenType tables of any number of TTFs and CFFs"
  homepage "https://glyphsapp.com/tools/fonttableviewer"

  livecheck do
    url :url
    regex(/FontTableViewer(\d+(?:\.\d+)*-\d+)\.zip/i)
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "FontTableViewer.app"

  # No zap stanza required
end
