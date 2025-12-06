# Homebrew Tap for WhisperHotkey

Official Homebrew tap for [WhisperHotkey](https://github.com/Automaat/whisper-hotkey) - macOS voice-to-text via hotkey using local Whisper.

## Installation

```bash
brew install Automaat/whisper-hotkey/whisper-hotkey
```

## Usage

After installation, WhisperHotkey.app will be in your Applications folder.

1. Open WhisperHotkey from Applications
2. Grant required permissions when prompted:
   - Accessibility
   - Input Monitoring
   - Microphone
3. Use default hotkey: `Ctrl+Option+Z`

## Configuration

Edit `~/.whisper-hotkey/config.toml` to customize:
- Hotkey combination
- Whisper model (tiny, base, small, medium, large)
- Performance settings

## Updating

```bash
brew upgrade whisper-hotkey
```

## Uninstalling

```bash
brew uninstall whisper-hotkey

# Remove all data (optional)
brew uninstall --zap whisper-hotkey
```

## Documentation

See the [main repository](https://github.com/Automaat/whisper-hotkey) for full documentation.
