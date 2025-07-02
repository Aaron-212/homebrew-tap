cask "sf-symbols@beta" do
  version "7"
  sha256 "a6ff40d0f0458cb3a4fc8de2fce85cace95d14806d60aad0c8a8b8bdb8e3cb57"

  conflicts_with cask: "sf-symbols"

  url "https://developer.apple.com/download/files/SF-Symbols-#{version}.dmg"
  name "SF Symbols"
  desc "SF Symbols"
  homepage "https://developer.apple.com/sf-symbols/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    strategy :skip
  end

  depends_on macos: ">= :ventura"

  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.pkg.SFSymbols-beta"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
