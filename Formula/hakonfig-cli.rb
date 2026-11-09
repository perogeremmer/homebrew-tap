class HakonfigCli < Formula
  desc "Manage AI coding harness provider configs"
  homepage "https://github.com/perogeremmer/hakonfig"
  version "0.5.2"
  license "MIT"

  head "https://github.com/perogeremmer/hakonfig.git", branch: "master"

  on_macos do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.5.2/hakonfig-cli-universal-apple-darwin"
    sha256 "1fdacddbb9fdf24a929fb6e150afbbbba4cc9e9a2e23aa993a3ac0ff857b5b01"

    def install
      binary = "hakonfig-cli"
      bin.install "hakonfig-cli-universal-apple-darwin" => binary
    end
  end

  on_linux do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.5.2/hakonfig-cli-x86_64-unknown-linux-gnu"
    sha256 "d8f4f8df3fedc8b5a4012badb82eca5d6286f444dedbd6eb7a4a7e0d97e75c83"

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
