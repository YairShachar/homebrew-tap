cask "dont-forget-your-breaks" do
  version "1.0.12"
  sha256 "9eaccdebd1212c102cbf2272f03d4defe2a0dc6254e9c659ad8b7c18250a1264"

  url "https://github.com/YairShachar/dont-forget-your-breaks/releases/download/v#{version}/DontForgetYourBreaks.dmg"
  name "Don't Forget Your Breaks"
  desc "Desktop app that reminds you to take regular breaks"
  homepage "https://github.com/YairShachar/dont-forget-your-breaks"

  app "Dont Forget Your Breaks.app"

  # Remove quarantine attribute to avoid Gatekeeper warnings
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Dont Forget Your Breaks.app"]
  end

  zap trash: [
    "~/Library/Application Support/DontForgetYourBreaks",
    "~/Library/Preferences/com.yairs.dontforgetyourbreaks.json",
  ]
end
