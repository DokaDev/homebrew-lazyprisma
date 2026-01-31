cask "lazyprisma" do
  version "0.2.2"
  # version "0.1.3-beta"

  on_intel do
    sha256 "ee7644006d7c70bf55564feeccd00b9d3d08eeda1892460ef03598f9819e806d"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.2.2/lazyprisma-v0.2.2-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "eb7a401301d4e0c683e9d2cd837f802cea29df339cf5196f793d70189b37b33a"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.2.2/lazyprisma-v0.2.2-darwin-arm64.tar.gz"
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
