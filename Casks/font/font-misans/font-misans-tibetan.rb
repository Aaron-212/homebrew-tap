cask "font-misans-tibetan" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_Tibetan.zip"
  name "MiSans Tibetan"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSans Tibetan/MiSansTibetanVF.ttf"
  font "MiSans Tibetan/otf/MiSansTibetan-Bold.otf"
  font "MiSans Tibetan/otf/MiSansTibetan-ExtraLight.otf"
  font "MiSans Tibetan/otf/MiSansTibetan-Light.otf"
  font "MiSans Tibetan/otf/MiSansTibetan-Normal.otf"
  font "MiSans Tibetan/otf/MiSansTibetan-Semibold.otf"
  font "MiSans Tibetan/otf/MiSansTibetan-Demibold.otf"
  font "MiSans Tibetan/otf/MiSansTibetan-Heavy.otf"
  font "MiSans Tibetan/otf/MiSansTibetan-Medium.otf"
  font "MiSans Tibetan/otf/MiSansTibetan-Regular.otf"
  font "MiSans Tibetan/otf/MiSansTibetan-Thin.otf"

  # No zap stanza required
end
