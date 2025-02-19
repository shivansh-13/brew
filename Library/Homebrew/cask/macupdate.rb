# typed: strict
# frozen_string_literal: true

cask "macupdate" do
  version "6.4.1.450526"
  sha256 :no_check

  url "https://www.macupdate.com/mud-download"
  name "MacUpdate Desktop"
  desc "Updates software from website"
  homepage "https://www.macupdate.com/desktop"

  app "MacUpdate Desktop.app"

  zap trash: [
    "~/Library/Application Support/MacUpdate/MacUpdate Desktop #{version.major}",
    "~/Library/Caches/com.macupdate.desktop#{version.major}",
    "~/Library/Cookies/com.macupdate.desktop#{version.major}.binarycookies",
    "~/Library/Logs/MacUpdate Desktop",
    "~/Library/Preferences/com.macupdate.desktop#{version.major}.plist",
    "~/Library/Saved Application State/com.macupdate.desktop#{version.major}.savedState",
  ]
end
