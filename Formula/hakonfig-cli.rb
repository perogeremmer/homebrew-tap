class HakonfigCli < Formula
  desc "Manage AI coding harness provider configs"
  homepage "https://github.com/perogeremmer/hakonfig"
  version "0.6.8"
  license "MIT"

  head "https://github.com/perogeremmer/hakonfig.git", branch: "master"

  on_macos do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.6.8/hakonfig-cli-universal-apple-darwin"
    sha256 "14e4ce10451b95329ebff092bf6c50584bfa03093e5190c7a328bc434ff0908a"

    def install
      binary = "hakonfig-cli"
      bin.install "hakonfig-cli-universal-apple-darwin" => binary
    end
  end

  on_linux do
    url "https://github.com/perogeremmer/hakonfig/releases/download/v0.6.8/hakonfig-cli-x86_64-unknown-linux-gnu"
    sha256 "f96e1e415c45dfd50f46b77e967600252fa25c6e361c2547d95fb61039fb418e"

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
