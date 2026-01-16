cask "lazyprisma" do
  version "0.2.1"
  # version "0.1.3-beta"

  on_intel do
    sha256 "61cddcaa89103d3113ec94abaf0f1e8c0adb6d29c2843fb1cd1cbf5545ac0e32"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.2.1/lazyprisma-v0.2.1-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "0c29a448c7d9f16a000ea4cb77d740fe3cd9c0d439b9360bdd1c2f5b7488ce10"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.2.1/lazyprisma-v0.2.1-darwin-arm64.tar.gz"
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
