cask "lazyprisma" do
  version "0.1.4"
  # version "0.1.3-beta"

  on_intel do
    sha256 "83d73ecb692a0755cad22e7ac34bf7a7815ee24851377f0323364c881da989da"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.4/lazyprisma-v0.1.4-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "95b539b3e969642ae39e09ac3569d8bbf9801862f3e3a5db4e8721f4203eeeaf"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.4/lazyprisma-v0.1.4-darwin-arm64.tar.gz"
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
