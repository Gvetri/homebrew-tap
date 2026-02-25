cask "jh" do
  version "0.2.5"
  sha256 "6ec1210f35cece525a313cdd7c737931f4857405c1df6cbda3e7d0042b9e4f3e"

  url "https://github.com/Gvetri/homebrew-tap/releases/download/v#{version}/jh.dmg"
  name "Jira Helper"
  desc "Atlassian multiplatform helper CLI and UI"
  homepage "https://github.com/Gvetri/atlassian-helper"

  app "jh.app"
  binary "#{appdir}/jh.app/Contents/MacOS/jh"

  zap trash: [
    "~/Library/Application Support/com.atlassian.helper",
    "~/Library/Preferences/com.atlassian.helper.plist",
  ]
end
