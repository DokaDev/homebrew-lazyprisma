cask "lazyprisma" do
  version "0.1.7"
  # version "0.1.3-beta"

  on_intel do
    sha256 "ed29d69cd961367d5b0f0ddac4ec60ac7ebb5d8a7c6a6ffdb050d3ba0907898c"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.7/lazyprisma-v0.2.0-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "0d56b768c913446fa31a15728ed4725c0cdec181ecb6e5ad095f2add599f6d35"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.7/lazyprisma-v0.2.0-darwin-arm64.tar.gz"
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
