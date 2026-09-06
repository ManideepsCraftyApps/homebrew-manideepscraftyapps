cask "reko" do
  version "1.0.1"
  sha256 "3fce278551998e963edfb2f5abbe1b58a100b57f87fa073aa1d2726a8d702609"

  url "https://manideepscraftyapps.github.io/reko/releases/Reko-#{version}.zip"
  name "Reko"
  desc "Clipboard history manager for macOS"
  homepage "https://manideepscraftyapps.github.io/reko/features.html"

  livecheck do
    url "https://manideepscraftyapps.github.io/reko/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Reko.app"

  zap trash: [
    "~/Library/Application Support/Reko",
    "~/Library/Preferences/com.manideep.Reko.plist",
  ]
end
