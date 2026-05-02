cask "recmeet" do
  version "0.6.0"
  sha256 "a180f33e6961a2eea9ef38e0419d65c52c7d99790e4ee4d1d483a49a0b4f6515"

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
