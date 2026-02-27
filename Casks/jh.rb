cask "jh" do
  version "0.2.10"
  sha256 "83d1085b232d6fcac87b534582740d233ceb4fc49951dad887aba1e9a01b4009"

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
