cask "font-misans-thai" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_Thai.zip"
  name "MiSans Thai"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSans Thai /MiSansThaiVF.ttf"
  font "MiSans Thai /OpenType/MiSansThai-Bold.otf"
  font "MiSans Thai /OpenType/MiSansThai-ExtraLight.otf"
  font "MiSans Thai /OpenType/MiSansThai-Light.otf"
  font "MiSans Thai /OpenType/MiSansThai-Normal.otf"
  font "MiSans Thai /OpenType/MiSansThai-Semibold.otf"
  font "MiSans Thai /OpenType/MiSansThai-Demibold.otf"
  font "MiSans Thai /OpenType/MiSansThai-Heavy.otf"
  font "MiSans Thai /OpenType/MiSansThai-Medium.otf"
  font "MiSans Thai /OpenType/MiSansThai.otf" # Regular
  font "MiSans Thai /OpenType/MiSansThai-Thin.otf"

  # No zap stanza required
end
