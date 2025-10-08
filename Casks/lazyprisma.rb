cask "lazyprisma" do
  version "0.1.7"
  # version "0.1.3-beta"

  on_intel do
    sha256 "2b90ef2e18ae565343a9482bec3199aabcd60aac718c27f908188eff745c3d83"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.7/lazyprisma-v0.1.7-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "c611e8abfdec414ec76c469cc8f4c4a57d230dd1e8feeb92870c64617ba05367"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.7/lazyprisma-v0.1.7-darwin-arm64.tar.gz"
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
