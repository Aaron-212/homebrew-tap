cask "fonttableviewer" do
  version :latest
  sha256 :no_check

  url "https://updates.glyphsapp.com/FontTableViewer/latest.php"
  name "Font Table Viewer"
  desc "Viewing and comparing OpenType tables of any number of TTFs and CFFs"
  homepage "https://glyphsapp.com/tools/fonttableviewer"

  depends_on macos: ">= :sierra"

  app "FontTableViewer.app"

  # No zap stanza required
end
