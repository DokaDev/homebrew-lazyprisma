cask "lazyprisma" do
  version "0.3.0"
  # version "0.1.3-beta"

  on_intel do
    sha256 "623700bd77ca09210d98a15365c2046c9f0af56b6c762a2ffed6e592f6ae20b3"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.3.0/lazyprisma-v0.3.0-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "aaaf8c838d999e29277b4e56a1de882df9023aee2dd3d06c41867f6d313b9f66"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.3.0/lazyprisma-v0.3.0-darwin-arm64.tar.gz"
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
