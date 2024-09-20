cask "font-misans-l3" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_L3.zip"
  name "MiSans L3"
  desc "HyperOS MiSans font (Chinese GB18030-L3 glyph set)"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSans L3/MiSans L3.otf"

  # No zap stanza required
end
