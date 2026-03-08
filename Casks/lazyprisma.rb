cask "lazyprisma" do
  version "0.3.2"
  # version "0.1.3-beta"

  on_intel do
    sha256 "2fa655886f73389a429e661771bebd0de9a73dbca514ccf05cfeaf06857aef3b"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.3.2/lazyprisma-v0.3.2-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "0a7ae33e5f73562d9728ebc8a62179fc195748924130d1ee9b99edaa7f031a01"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.3.2/lazyprisma-v0.3.2-darwin-arm64.tar.gz"
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
