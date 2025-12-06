cask "whisper-hotkey" do
  version "0.12.0"
  sha256 "670a37d25d5194a5bde3d06f39236587a305b172cc0519df442369263533721f"

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
