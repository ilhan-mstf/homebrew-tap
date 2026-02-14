cask "omnitool" do
    version "0.1.1-beta" # Update this whenever you release
    sha256 :no_check # Or run 'shasum -a 256' on your DMG

    url "https://github.com/ilhan-mstf/omnitool/releases/download/v#{version}/Omnitool_#{version}_aarch64.dmg"
    name "Omnitool"
    desc "The Privacy-First Developer Toolbox"
    homepage "https://ilhan-mstf.github.io/omnitool/"

    app "Omnitool.app"

    zap trash: [
        "~/Library/Application Support/com.omnitool.app",
        "~/Library/Caches/com.omnitool.app",
    ]
end