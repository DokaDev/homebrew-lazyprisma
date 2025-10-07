cask "lazyprisma" do
  version "0.1.0"

  on_intel do
    sha256 "3d96e9c94348332ae6a1e600605b2023594f2e894bec9a381a868ee6874074c9"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.0/lazyprisma-v0.1.0-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "080e94461beda6132f30e0a5440781b3a4540766257eec7504cd9f8c815f1ca6"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.0/lazyprisma-v0.1.0-darwin-arm64.tar.gz"
  end

  name "lazyprisma"
  desc "Prisma migration management TUI"
  homepage "https://github.com/DokaDev/lazyprisma"

  binary "lazyprisma"
end
