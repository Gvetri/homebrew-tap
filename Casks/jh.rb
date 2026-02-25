cask "jh" do
  version "0.2.3"
  sha256 "2b770a0390f00d18cea2b96c2ff08e75719682470702baf7ab41781033c73d5b"

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
