cask "lazyprisma" do
  version "0.1.6.1"
  # version "0.1.3-beta"

  on_intel do
    sha256 "914df2d9672b368b9e16060fba01ce47afb81f71ea1f2a67ba4d8e499f13cf46"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.6.1/lazyprisma-v0.1.6.1-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "b1cb61cf9a217c57905bd30c1320419c71d9239e0c1bf5c6cdd222677c36e647"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.6.1/lazyprisma-v0.1.6.1-darwin-arm64.tar.gz"
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
