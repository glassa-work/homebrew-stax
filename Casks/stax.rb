# Stax desktop viewer — macOS.
#
# version/sha256 are bumped by .github/workflows/stax-release.yml in the
# (private) source repo on every v* tag. The DMG is attached to the matching
# release on glassa-work/stax-cli. The CLI itself ships as the `stax` formula
# in this same tap — this cask installs only Stax.app.
cask "stax" do
  version "2.7.0"
  sha256 "8f7ca5bb5527142d34ecde5809f51356beb61e6136b738ac7d09313a2f80f193"

  url "https://github.com/glassa-work/stax-cli/releases/download/v#{version}/Stax-v#{version}-universal.dmg"
  name "Stax"
  desc "Your codebase's knowledge brain — desktop viewer"
  homepage "https://stax.glassa.ai"

  app "Stax.app"

  zap trash: [
    "~/Library/Application Support/Stax",
    "~/Library/Caches/com.stax.desktop",
    "~/Library/Preferences/com.stax.desktop.plist",
    "~/Library/LaunchAgents/com.stax.desktop.plist",
    "~/Library/Saved Application State/com.stax.desktop.savedState",
  ]
end
