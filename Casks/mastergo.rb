cask "mastergo" do
  arch arm: "macos-arm", intel: "macos"

  version "1.9.1"
  sha256 intel: "dde3a4c0be3aef13e72e271198253ffc140fee7d082109bb8561e05ac732c4fd",
         arm:   "605851c0760bbf198065b7bfc6cee22095ecd05928b6a8ba284e8a3e7f5492c1"

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
