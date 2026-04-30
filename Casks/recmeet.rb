cask "recmeet" do
  version "0.4.0"
  sha256 "d6b0f7020b27bbb849c5ae1fe19ef69fb4de8911038f178bcb9eee5c04bbb491"

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
