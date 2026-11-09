class HakonfigCli < Formula
  desc "Manage AI coding harness provider configs"
  homepage "https://github.com/perogeremmer/hakonfig"
  version "0.4.5"
  license "MIT"

  head "https://github.com/perogeremmer/hakonfig.git", branch: "master"

  on_macos do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.4.5/hakonfig-cli-universal-apple-darwin"
    sha256 "d3db5eb280c2e06645f34d044acab0bbe2188d134d9d4510418fecc46f17a775"

    def install
      binary = "hakonfig-cli"
      bin.install "hakonfig-cli-universal-apple-darwin" => binary
    end
  end

  on_linux do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.4.5/hakonfig-cli-x86_64-unknown-linux-gnu"
    sha256 "8874720ad306775788c0bebc7c6fd08c83ef4c455e19676f273c20baee1d6720"

    def install
      binary = "hakonfig-cli"
      bin.install "hakonfig-cli-x86_64-unknown-linux-gnu" => binary
    end
  end

  def caveats
    <<~EOS
      The CLI is installed as hakonfig-cli.
      Desktop app docs: https://github.com/perogeremmer/hakonfig#readme
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hakonfig-cli --version")
  end
end
