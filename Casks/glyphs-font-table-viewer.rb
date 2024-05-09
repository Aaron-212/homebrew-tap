cask "glyphs-font-table-viewer" do
  version :latest
  sha256 :no_check

  url "https://updates.glyphsapp.com/FontTableViewer/latest.php"
  name "Font Table Viewer"
  homepage "https://glyphsapp.com/tools/fonttableviewer"

  depends_on macos: ">= :mavericks"

  app "FontTableViewer.app"

  # No zap stanza required
end
