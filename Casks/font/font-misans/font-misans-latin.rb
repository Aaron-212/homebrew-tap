cask "font-misans-latin" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_Latin.zip"
  name "MiSans Latin"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSans Latin/MiSans Latin VF.ttf"
  font "MiSans Latin/static/otf/MiSansLatin-Bold.otf"
  font "MiSans Latin/static/otf/MiSansLatin-ExtraLight.otf"
  font "MiSans Latin/static/otf/MiSansLatin-Light.otf"
  font "MiSans Latin/static/otf/MiSansLatin-Normal.otf"
  font "MiSans Latin/static/otf/MiSansLatin-Semibold.otf"
  font "MiSans Latin/static/otf/MiSansLatin-Demibold.otf"
  font "MiSans Latin/static/otf/MiSansLatin-Heavy.otf"
  font "MiSans Latin/static/otf/MiSansLatin-Medium.otf"
  font "MiSans Latin/static/otf/MiSansLatin-Regular.otf"
  font "MiSans Latin/static/otf/MiSansLatin-Thin.otf"

  # No zap stanza required
end
