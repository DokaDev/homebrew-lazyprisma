cask "lazyprisma" do
  version "0.1.0"

  on_intel do
    sha256 :no_check
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.0/lazyprisma-v0.1.0-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 :no_check
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.0/lazyprisma-v0.1.0-darwin-arm64.tar.gz"
  end

  name "lazyprisma"
  desc "Prisma migration management TUI"
  homepage "https://github.com/DokaDev/lazyprisma"

  binary "lazyprisma"
end
