cask "jh" do
  version "0.2.6"
  sha256 "0cc70e3ce8bf75514bfe9bac18340469b88664a8ba982a757bd5fee622a34004"

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
