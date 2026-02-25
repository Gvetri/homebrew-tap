cask "jh" do
  version "0.2.8"
  sha256 "60d1e305f98f74f98f37fd0e327e37709ec5ed53afd9c622c987f9de51abc028"

  url "https://github.com/Gvetri/homebrew-tap/releases/download/v#{version}/jh.dmg"
  name "Jira Helper"
  desc "Atlassian multiplatform helper CLI and UI"
  homepage "https://github.com/Gvetri/atlassian-helper"

  app "jh.app"
  binary "#{appdir}/jh.app/Contents/MacOS/jh"

  caveats <<~EOS
    macOS Gatekeeper may block this application from running because it is not signed.
    To allow it to run, execute the following command in your terminal:
      xattr -cr /Applications/jh.app
  EOS

  zap trash: [
    "~/Library/Application Support/com.atlassian.helper",
    "~/Library/Preferences/com.atlassian.helper.plist",
  ]
end
