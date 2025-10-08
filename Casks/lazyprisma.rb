cask "lazyprisma" do
  version "0.1.3-beta"

  on_intel do
    sha256 "0c318fea9c5f7d72ea189841878da260e3abc53e5755b4acc3b0ad76feb95e33"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.3-beta/lazyprisma-v0.1.3-beta-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "33155295fd0bfbe41e48950aa0a58e2e437d711f2ac205f4ee193f0cd2e5bffa"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.3-beta/lazyprisma-v0.1.3-beta-darwin-arm64.tar.gz"
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
