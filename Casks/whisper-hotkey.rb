cask "whisper-hotkey" do
  version "0.11.0"
  sha256 "2b73a3e35734d8f31b85813ff3d87181f17f25295b2b3aa1859a6ed97c24382e"

  url "https://github.com/Automaat/whisper-hotkey/releases/download/v#{version}/WhisperHotkey-#{version}.dmg"
  name "WhisperHotkey"
  desc "macOS voice-to-text via hotkey using local Whisper"
  homepage "https://github.com/Automaat/whisper-hotkey"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WhisperHotkey.app"

  zap trash: [
    "~/.whisper-hotkey",
    "~/Library/LaunchAgents/com.whisper-hotkey.plist",
  ]

  caveats <<~EOS
    WhisperHotkey requires permissions to function:

    1. Accessibility: System Settings → Privacy & Security → Accessibility
    2. Input Monitoring: System Settings → Privacy & Security → Input Monitoring
    3. Microphone: System Settings → Privacy & Security → Microphone

    Add "WhisperHotkey" to each and enable the checkboxes.

    Default hotkey: Ctrl+Option+Z
    Config: ~/.whisper-hotkey/config.toml

    For more info: https://github.com/Automaat/whisper-hotkey#readme
  EOS
end
