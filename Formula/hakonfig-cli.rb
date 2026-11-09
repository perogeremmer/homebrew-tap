class HakonfigCli < Formula
  desc "Manage AI coding harness provider configs"
  homepage "https://github.com/perogeremmer/hakonfig"
  version "0.4.8"
  license "MIT"

  head "https://github.com/perogeremmer/hakonfig.git", branch: "master"

  on_macos do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.4.8/hakonfig-cli-universal-apple-darwin"
    sha256 "ad7ceee5066b26432b3cdba80dc03e748608cc3f2f3ad22cf30ba9177f2b1a81"

    def install
      binary = "hakonfig-cli"
      bin.install "hakonfig-cli-universal-apple-darwin" => binary
    end
  end

  on_linux do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.4.8/hakonfig-cli-x86_64-unknown-linux-gnu"
    sha256 "295537b3feb50fd8e78b1af00a76243866476b8359064c2ba2d0191cce036ea3"

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
