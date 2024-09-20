cask "font-misans-tc" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_TC.zip"
  name "MiSans TC"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSans TC/MiSans TC VF.ttf"
  font "MiSans TC/otf/MisansTC-Bold.otf"
  font "MiSans TC/otf/MisansTC-ExtraLight.otf"
  font "MiSans TC/otf/MisansTC-Light.otf"
  font "MiSans TC/otf/MisansTC-Normal.otf"
  font "MiSans TC/otf/MisansTC-Semibold.otf"
  font "MiSans TC/otf/MisansTC-Demibold.otf"
  font "MiSans TC/otf/MisansTC-Heavy.otf"
  font "MiSans TC/otf/MisansTC-Medium.otf"
  font "MiSans TC/otf/MisansTC-Regular.otf"
  font "MiSans TC/otf/MisansTC-Thin.otf"

  # No zap stanza required
end
