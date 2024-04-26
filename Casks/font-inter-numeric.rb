cask "font-inter-numeric" do
  version "1.005"
  sha256 "9d5c1e5946adbfc0a4bf3e0f35158134ee9dc74ab4796df61692187fdfed0d61"

  url "https://github.com/Aaron-212/InterNumeric/releases/download/v#{version}/InterNumeric-#{version}.zip"
  name "Inter Numeric"
  homepage "https://github.com/Aaron-212/InterNumeric"

  font "InterNumeric/variable/InterNumeric[wght,RDNS].ttf"

  # No zap stanza required
end
