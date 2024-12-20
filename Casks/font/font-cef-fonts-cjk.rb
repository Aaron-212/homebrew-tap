cask "font-cef-fonts-cjk" do
  version "2.25"
  sha256 "de40f6cd83192ce4d66548ee6b611c59f487495b3a55c959b63721b63a25c6cd"

  url "https://github.com/Partyb0ssishere/cef-fonts-cjk/archive/refs/tags/v#{version}.zip"
  name "CEF Fonts CJK"
  desc "Completely hand-drawn CJK font"
  homepage "https://github.com/Partyb0ssishere/cef-fonts-cjk"

  livecheck do
    url "https://github.com/Partyb0ssishere/cef-fonts-cjk/tags"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  font "cef-fonts-cjk-#{version}/CEFFontsCJK-Regular.ttf"
  font "cef-fonts-cjk-#{version}/CEFFontsCJKMono-Regular.ttf"

  # No zap stanza required
end
