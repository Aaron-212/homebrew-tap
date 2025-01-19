cask "font-babelstone-han" do
  version "16.0.3"
  sha256 "6a928e436ee52d1857c32b5e4d5e71f4f0a9d13ccf660fc4f1ff08df930e12dc"

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
