cask "font-playwrite" do
  version :latest
  sha256 :no_check

  url "https://github.com/TypeTogether/Playwrite.git",
      branch:    "main",
      only_path: "fonts"
  name "Playwrite"
  desc "Typeface engine that allows the creation of primary school cursive fonts"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "ttf/Playwrite-ExtraLight.ttf"
  font "ttf/Playwrite-ExtraLightItalic.ttf"
  font "ttf/Playwrite-Italic.ttf"
  font "ttf/Playwrite-Light.ttf"
  font "ttf/Playwrite-LightItalic.ttf"
  font "ttf/Playwrite-Regular.ttf"
  font "ttf/Playwrite-Thin.ttf"
  font "ttf/Playwrite-ThinItalic.ttf"
  font "variable/Playwrite[SPED,YEXT,slnt,wght].ttf"

  # No zap stanza required
end
