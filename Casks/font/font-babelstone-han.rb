cask "font-babelstone-han" do
  version "16.0.1"
  sha256 "94dbbf6a02439dd79888dd541a3b2604c309fb5da6dc2ea8e2265791e85c1eff"

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
