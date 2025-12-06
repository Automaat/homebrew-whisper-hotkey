cask "whisper-hotkey" do
  version "0.10.0"
  sha256 "50117fe7d8af6b98e8412823fd1fb938ddad4c1e41101e08f9b34b18cf9fef94"

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
