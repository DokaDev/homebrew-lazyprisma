cask "lazyprisma" do
  version "0.1.5"
  # version "0.1.3-beta"

  on_intel do
    sha256 "03b1d8b23b24e8b1d564a2b55b8519284894769ae596e82da55cd30282cec687"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.5/lazyprisma-v0.1.5-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "7d3699ea826876c9fbefac496b8922382dd4485541dd482fde57e74278ac3294"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.5/lazyprisma-v0.1.5-darwin-arm64.tar.gz"
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
