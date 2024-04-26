cask "font-nova-gothic" do
  version "1.001"
  sha256 "55d083cc8254b01b1528259242b846e8c1a4370dcfc25bdf1514e34b9bb4fb7b"

  url "https://github.com/Aaron-212/NovaGothic/releases/download/v#{version}/NovaGothic-#{version}.zip"
  name "Nova Gothic"
  homepage "https://github.com/Aaron-212/NovaGothic"

  font "NovaGothic/static/NovaGothic-Bold.otf"
  font "NovaGothic/static/NovaGothic-Light.otf"
  font "NovaGothic/static/NovaGothic-Medium.otf"
  font "NovaGothic/static/NovaGothic-Regular.otf"
  font "NovaGothic/variable/NovaGothicVF.otf"

  # No zap stanza required
end
