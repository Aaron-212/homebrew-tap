cask "mastergo" do
  arch arm: "macos-arm", intel: "macos"

  version "1.8.2"
  sha256 intel: "3fe5f5824f07bdb4480bb0bf06991f5c0db5098f00e5a9bf14f9194013a82439",
         arm:   "42e970f0f5a303018cfd7fe7bd4b7aac2cead341464db02e295a48c1307d943b"

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

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/CrashReporter/MasterGo_9343BB66-A06C-5697-9041-00EFBB1CEF39.plist",
    "~/Library/Preferences/com.electron.master-desktop.plist",
    "~/Library/Saved Application State/com.electron.master-desktop.savedState",
  ]
end
