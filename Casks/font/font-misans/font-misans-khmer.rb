cask "font-misans-khmer" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_Khmer.zip"
  name "MiSans Khmer"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSans Khmer/MiSansKhmerVF.ttf"
  font "MiSans Khmer/OTF/MiSansKhmer-Bold.otf"
  font "MiSans Khmer/OTF/MiSansKhmer-ExtraLight.otf"
  font "MiSans Khmer/OTF/MiSansKhmer-Light.otf"
  font "MiSans Khmer/OTF/MiSansKhmer-Normal.otf"
  font "MiSans Khmer/OTF/MiSansKhmer-Semibold.otf"
  font "MiSans Khmer/OTF/MiSansKhmer-Demibold.otf"
  font "MiSans Khmer/OTF/MiSansKhmer-Heavy.otf"
  font "MiSans Khmer/OTF/MiSansKhmer-Medium.otf"
  font "MiSans Khmer/OTF/MiSansKhmer-Regular.otf"
  font "MiSans Khmer/OTF/MiSansKhmer-Thin.otf"

  # No zap stanza required
end
