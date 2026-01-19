cask "dont-forget-your-breaks" do
  version "1.0.0"
  sha256 "2221e67badbf7ede7117070ccd0802636e61f9cb16595c99d27b8b90d2b038e4"

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
