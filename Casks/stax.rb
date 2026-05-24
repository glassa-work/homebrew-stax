# Stax desktop viewer — macOS.
#
# PLACEHOLDER until the first notarized .dmg is published by the Tauri release
# workflow (needs Apple Developer signing secrets). On release, CI updates
# version/sha256/url here. The `binary` stanza puts the app-bundled `stax` CLI on
# PATH when installed via `brew install --cask stax`.
cask "stax" do
  version "0.0.0"
  sha256 :no_check

  url "https://github.com/glassa-work/homebrew-stax/releases/download/desktop-v#{version}/Stax_#{version}_universal.dmg"
  name "Stax"
  desc "Your codebase's knowledge brain — desktop viewer"
  homepage "https://stax.glassa.ai"

  app "Stax.app"
  binary "#{appdir}/Stax.app/Contents/Resources/stax"

  zap trash: [
    "~/Library/Application Support/Stax",
    "~/Library/Preferences/ai.glassa.stax.plist",
  ]
end
