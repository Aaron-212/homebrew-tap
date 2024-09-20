cask "font-misans-arabic" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_Arabic.zip"
  name "MiSans Arabic"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSana Arabic/MiSansArabicVF.ttf"
  font "MiSana Arabic/otf/MiSansArabic-Bold.otf"
  font "MiSana Arabic/otf/MiSansArabic-ExtraLight.otf"
  font "MiSana Arabic/otf/MiSansArabic-Light.otf"
  font "MiSana Arabic/otf/MiSansArabic-Normal.otf"
  font "MiSana Arabic/otf/MiSansArabic-Semibold.otf"
  font "MiSana Arabic/otf/MiSansArabic-Demibold.otf"
  font "MiSana Arabic/otf/MiSansArabic-Heavy.otf"
  font "MiSana Arabic/otf/MiSansArabic-Medium.otf"
  font "MiSana Arabic/otf/MiSansArabic-Regular.otf"
  font "MiSana Arabic/otf/MiSansArabic-Thin.otf"

  # No zap stanza required
end
