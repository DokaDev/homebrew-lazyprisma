cask "lazyprisma" do
  version "0.3.1"
  # version "0.1.3-beta"

  on_intel do
    sha256 "6f1e5f239909d13732cb356a5394a6a59bb0551ae186a2b22fb05e072d73a2bb"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.3.1/lazyprisma-v0.3.1-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "5ab8eefe20365413ccf87866dab9c763777d3821f2052127e6e37c3bf2c58f66"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.3.1/lazyprisma-v0.3.1-darwin-arm64.tar.gz"
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
