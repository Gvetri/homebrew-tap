cask "jh" do
  version "0.2.4"
  sha256 "e422c9cfe49d36169924e01c46365ea3d1533f519ed269e8a59e290dc3220a05"

  url "https://github.com/Gvetri/atlassian-helper/releases/download/v#{version}/jh.dmg"
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
