cask "lazyprisma" do
  version "0.1.6"
  # version "0.1.3-beta"

  on_intel do
    sha256 "b00a574ec0dbfad49ecb430b7992cd58d9c86377f29edd8d6b9dafa69d596af8"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.6/lazyprisma-v0.1.6-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "cc8d91cdbb9d7691a24cab2cc30396ade0f1c0f68f87d91fc71b85b35f3100ae"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.6/lazyprisma-v0.1.6-darwin-arm64.tar.gz"
  end

  name "lazyprisma"
  desc "Prisma migration management TUI"
  homepage "https://github.com/DokaDev/lazyprisma"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/lazyprisma"]
  end

  binary "lazyprisma"
end
