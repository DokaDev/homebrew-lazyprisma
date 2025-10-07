cask "lazyprisma" do
  version "0.1.2-beta"

  on_intel do
    sha256 "efe9ee61b8fe0a30fd58b4d5736ca0886304d04bf71f87a55b65bbe48d40ed7e"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.2-beta/lazyprisma-v0.1.2-beta-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "6a30a85d3f209e034dd7659bbd6ad274106e5d64925d1ba8aa1dd17fc68a7876"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.2-beta/lazyprisma-v0.1.2-beta-darwin-arm64.tar.gz"
  end

  name "lazyprisma"
  desc "Prisma migration management TUI"
  homepage "https://github.com/DokaDev/lazyprisma"

  binary "lazyprisma"
end
