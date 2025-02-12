cask "mastergo" do
  arch arm: "macos-arm", intel: "macos"

  version "1.10.0"
  sha256 intel: "0b9724d6e6a3caf8666fa9accaa07c8e2cd37f29bcc7b416ad385da523fc524a",
         arm:   "9553a7f349cf2ba8ac8092fb701dbcf1ebbe91b1585021076570d588b2b94f9e"

  url "https://static.mastergo.com/plugins/desktop/#{arch}/MasterGo-#{version}.dmg"
  name "MasterGo"
  name "莫高设计"
  desc "Digital interface production platform for the AI era"
  homepage "https://mastergo.com/"

  livecheck do
    url "https://static.mastergo.com/plugins/desktop/macos/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "MasterGo.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/MasterGo_9343BB66-A06C-5697-9041-00EFBB1CEF39.plist",
    "~/Library/Preferences/com.electron.master-desktop.plist",
    "~/Library/Saved Application State/com.electron.master-desktop.savedState",
  ]
end
