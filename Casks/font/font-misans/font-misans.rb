cask "font-misans" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans.zip"
  name "MiSans"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSans/MiSans VF.ttf"
  font "MiSans/otf/MiSans-Bold.otf"
  font "MiSans/otf/MiSans-ExtraLight.otf"
  font "MiSans/otf/MiSans-Light.otf"
  font "MiSans/otf/MiSans-Normal.otf"
  font "MiSans/otf/MiSans-Semibold.otf"
  font "MiSans/otf/MiSans-Demibold.otf"
  font "MiSans/otf/MiSans-Heavy.otf"
  font "MiSans/otf/MiSans-Medium.otf"
  font "MiSans/otf/MiSans-Regular.otf"
  font "MiSans/otf/MiSans-Thin.otf"

  # No zap stanza required
end
