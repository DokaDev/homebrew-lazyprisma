cask "lazyprisma" do
  version "0.1.6.2"
  # version "0.1.3-beta"

  on_intel do
    sha256 "c422c12600e27546aa3c1e0132b119d0fc02db92164110279a6bd291b37bfc68"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.6.2/lazyprisma-v0.1.6.2-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "f853a8faee3c19cff0578fb2843ba0e0d2083a362d4285b609648c9d1fd07835"
    url "https://github.com/DokaDev/lazyprisma/releases/download/v0.1.6.2/lazyprisma-v0.1.6.2-darwin-arm64.tar.gz"
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
