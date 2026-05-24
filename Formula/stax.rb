# Hand-authored for the v2.6.0 bootstrap. GoReleaser regenerates this on future
# releases of the (private) source repo.
class Stax < Formula
  desc "Your codebase's knowledge brain — project graph CLI + MCP server"
  homepage "https://stax.glassa.ai"
  version "2.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glassa-work/homebrew-stax/releases/download/v2.6.0/stax-darwin-arm64.tar.gz"
      sha256 "1926d9ac7cc59094f0353fa006e513c903079ea2419e89ce7853ed72a148b149"
    end
    on_intel do
      url "https://github.com/glassa-work/homebrew-stax/releases/download/v2.6.0/stax-darwin-amd64.tar.gz"
      sha256 "216237923c1493f9b10bbaf4dadef0e9716d156ff3590b14fb506a5ca7056e90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glassa-work/homebrew-stax/releases/download/v2.6.0/stax-linux-arm64.tar.gz"
      sha256 "6c84302f248d9d087025a0deaf69e15d196ff7237393231d9b8439a20d16f869"
    end
    on_intel do
      url "https://github.com/glassa-work/homebrew-stax/releases/download/v2.6.0/stax-linux-amd64.tar.gz"
      sha256 "d1f58c8d14c8fbfd5c02a5839d840288e2ab55e20aa6f098ec22ab0d74dea39b"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    assert_match "stax version", shell_output("#{bin}/stax --version")
  end
end
