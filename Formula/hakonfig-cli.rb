class HakonfigCli < Formula
  desc "Manage AI coding harness provider configs"
  homepage "https://github.com/perogeremmer/hakonfig"
  version "0.4.2"
  license "MIT"

  head "https://github.com/perogeremmer/hakonfig.git", branch: "master"

  on_macos do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.4.2/hakonfig-cli-universal-apple-darwin"
    sha256 "6ed8a5e36135caaf698e4eca761a4f67a99c69b600c01624a87941d4de2855a0"

    def install
      binary = "hakonfig-cli"
      bin.install "hakonfig-cli-universal-apple-darwin" => binary
    end
  end

  on_linux do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.4.2/hakonfig-cli-x86_64-unknown-linux-gnu"
    sha256 "9f037c76d32b1248f408f22d6135b21d5c13f55a31e2e1deed3dc2193fa6917a"

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
