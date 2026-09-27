cask "fastbg" do
  version "0.1.1"
  sha256 "31317d7dcc30b06f9832f907d8795ab3b9b41bf96e20cd0a4e130e098b460243"

  url "https://github.com/heathdutton/FastBG/releases/download/#{version}/fastbg-#{version}.dmg"
  name "FastBG"
  desc "Video and live web backgrounds in any app"
  homepage "https://github.com/heathdutton/FastBG"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "FastBG.app"

  uninstall quit: "com.heathdutton.fastbg"

  zap trash: [
    "~/Library/Application Support/fastbg",
    "~/Library/Caches/com.heathdutton.fastbg",
    "~/Library/Preferences/com.heathdutton.fastbg.plist",
  ]
end
