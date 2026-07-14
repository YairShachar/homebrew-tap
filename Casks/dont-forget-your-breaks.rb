cask "dont-forget-your-breaks" do
  version "1.7.0"
  sha256 "f714133849f763bf0a85ebe4f119a1a083b53e5525f554a2b1299c172e5b29cd"

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
