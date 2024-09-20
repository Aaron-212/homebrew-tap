cask "font-misans-gurmukhi" do
  version :latest
  sha256 :no_check

  url "https://hyperos.mi.com/font-download/MiSans_Gurmukhi.zip"
  name "MiSans Gurmukhi"
  desc "HyperOS MiSans font"
  homepage "https://hyperos.mi.com/font/zh/"

  font "MiSans Gurmukhi/MiSans Gurmukhi VF.ttf"
  font "MiSans Gurmukhi/otf/MiSansGurmukhi-Bold.otf"
  font "MiSans Gurmukhi/otf/MiSansGurmukhi-ExtraLight.otf"
  font "MiSans Gurmukhi/otf/MiSansGurmukhi-Light.otf"
  font "MiSans Gurmukhi/otf/MiSansGurmukhi-Normal.otf"
  font "MiSans Gurmukhi/otf/MiSansGurmukhi-Semibold.otf"
  font "MiSans Gurmukhi/otf/MiSansGurmukhi-Demibold.otf"
  font "MiSans Gurmukhi/otf/MiSansGurmukhi-Heavy.otf"
  font "MiSans Gurmukhi/otf/MiSansGurmukhi-Medium.otf"
  font "MiSans Gurmukhi/otf/MiSansGurmukhi.otf" # Regular
  font "MiSans Gurmukhi/otf/MiSansGurmukhi-Thin.otf"

  # No zap stanza required
end
