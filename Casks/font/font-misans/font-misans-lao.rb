cask "font-misans-lao" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_Lao.zip"
  name "MiSans Laotian"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font " MiSans Lao/MiSansLaoVF.ttf"
  font " MiSans Lao/OpenType/MiSansLao-Bold.otf"
  font " MiSans Lao/OpenType/MiSansLao-ExtraLight.otf"
  font " MiSans Lao/OpenType/MiSansLao-Light.otf"
  font " MiSans Lao/OpenType/MiSansLao-Normal.otf"
  font " MiSans Lao/OpenType/MiSansLao-Semibold.otf"
  font " MiSans Lao/OpenType/MiSansLao-Demibold.otf"
  font " MiSans Lao/OpenType/MiSansLao-Heavy.otf"
  font " MiSans Lao/OpenType/MiSansLao-Medium.otf"
  font " MiSans Lao/OpenType/MiSansLao.otf" # Regular
  font " MiSans Lao/OpenType/MiSansLao-Thin.otf"

  # No zap stanza required
end
