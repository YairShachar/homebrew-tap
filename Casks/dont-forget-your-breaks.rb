cask "dont-forget-your-breaks" do
  version "1.8.13"
  sha256 "6d4a5b010c4902871b933b71ecab56183a086cbff6bfc7ed21ca30071dba4105"

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
