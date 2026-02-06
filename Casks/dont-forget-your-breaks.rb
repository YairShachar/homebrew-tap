cask "dont-forget-your-breaks" do
  version "1.0.2"
  sha256 "85d85db478e6e590e6f5a2b7446776bef88044de737d37f26b76df06d65318f6"

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
