cask "font-misans-devanagari" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_Devanagari.zip"
  name "MiSans Devanagari"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSans Devanagari/MiSans Devanagari VF.ttf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-Bold.otf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-ExtraLight.otf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-Light.otf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-Normal.otf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-Semibold.otf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-Demibold.otf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-Heavy.otf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-Medium.otf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-Regular.otf"
  font "MiSans Devanagari/OpenType/MiSansDevanagari-Thin.otf"

  # No zap stanza required
end
