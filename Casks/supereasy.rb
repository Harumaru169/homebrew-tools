cask "supereasy" do
  version "0.1.0"
  sha256 "5b12fd5d2828a5ddce8eaecfff562645a82e4378b7453fe912a137688f0c4bb4"

  url "https://github.com/Harumaru169/SuperEasy/releases/download/0.1.0/SuperEasy-App.zip"
  
  name "SuperEasy"
  desc "Just a sample project"
  homepage "https://github.com/Harumaru169/SuperEasy"

  app "SuperEasy.app"
  
  postflight do

    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/SuperEasy.app"],
                   sudo: false
    
    # 2. アドホック署名を上書き（Extensionを確実にロードさせるため）
    # system_command "/usr/bin/codesign",
    #                args: ["--force", "--deep", "--sign", "-", "#{appdir}/SuperEasy.app"],
    #                sudo: false
  end

  zap trash: [
  ]
end