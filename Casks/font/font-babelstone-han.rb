cask "font-babelstone-han" do
  version "16.0.2"
  sha256 "9ab664aec4df6ceb32768d1356febda39cd6d5f2ed0c38f940ce7bf68d20d779"

  url "https://babelstone.co.uk/Fonts/Download/BabelStoneHan-#{version}.zip"
  name "Babelstone Han"
  homepage "https://babelstone.co.uk/Fonts/Han.html"

  livecheck do
    url :homepage
    regex(/href=.*?BabelStoneHan[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "BabelStoneHan.ttf"

  # No zap stanza required
end
