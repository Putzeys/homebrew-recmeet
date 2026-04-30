cask "recmeet" do
  version "0.5.0"
  sha256 "b18032f8f2a499fcc689abf7d623827f055f94aca4c5f4d2aee719288ca9a062"

  url "https://github.com/Putzeys/Recmeet/releases/download/v#{version}/recmeet-macos.dmg"
  name "recmeet"
  desc "Mic + system audio recorder for meeting transcription"
  homepage "https://github.com/Putzeys/Recmeet"

  app "recmeet.app"

  zap trash: [
    "~/Library/Application Support/recmeet",
    "~/Library/Caches/recmeet",
    "~/Library/Preferences/dev.putzeys.recmeet.plist",
  ]
end
