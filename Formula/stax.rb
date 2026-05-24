# Hand-authored for the v0.1.0 bootstrap. GoReleaser regenerates this on future
# releases of the (private) source repo.
class Stax < Formula
  desc "Your codebase's knowledge brain — project graph CLI + MCP server"
  homepage "https://stax.glassa.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glassa-work/homebrew-stax/releases/download/v0.1.0/stax-darwin-arm64.tar.gz"
      sha256 "e1f15add53ce3b24eaadbfb94d2b0ceb916e4b863895a95b47c0ccc8d3dfcdfc"
    end
    on_intel do
      url "https://github.com/glassa-work/homebrew-stax/releases/download/v0.1.0/stax-darwin-amd64.tar.gz"
      sha256 "29460d2f701e6c565f3212cae26f659bc9bd96e9ac6a6dae7b0653dbb63d7cbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glassa-work/homebrew-stax/releases/download/v0.1.0/stax-linux-arm64.tar.gz"
      sha256 "39001f9283738d2b0396537cf193380344ab946528567ee7af85d40cd4bf7cf9"
    end
    on_intel do
      url "https://github.com/glassa-work/homebrew-stax/releases/download/v0.1.0/stax-linux-amd64.tar.gz"
      sha256 "f4dfd7a26e5f67e6bdabb4114a8f74f63f188dfaa8aebfc2f12abc7b04a6665a"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    assert_match "stax version", shell_output("#{bin}/stax --version")
  end
end
