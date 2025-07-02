cask "icon-composer" do
  version "1.0"
  sha256 :no_check

  url "https://developer.apple.com/download/files/icon-composer.dmg"
  name "Icon Composer"
  desc "Icon Composer is a tool for creating icons for macOS applications"
  homepage "https://developer.apple.com/icon-composer/"

  livecheck do
    strategy :extract_plist do |items|
      items["com.apple.IconComposer"].short_version
    end
  end

  depends_on macos: ">= :sequoia"

  app "Icon Composer.app"

  # No zap stanza required
end
