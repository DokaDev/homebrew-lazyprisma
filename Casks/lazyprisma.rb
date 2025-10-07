cask "lazyprisma" do
  version "0.1.1-beta"

  on_intel do
    sha256 "3c947aea43af70aac583daf11aa9f8910a2e1fab8e7c4b0b197e3662dd69308d"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.1-beta/lazyprisma-v0.1.1-beta-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "9eca59852f7627b23aeabfcd09346c968d7bced0b467d2492cdf0168d43ae56f"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.1-beta/lazyprisma-v0.1.1-beta-darwin-arm64.tar.gz"
  end

  name "lazyprisma"
  desc "Prisma migration management TUI"
  homepage "https://github.com/DokaDev/lazyprisma"

  binary "lazyprisma"
end
