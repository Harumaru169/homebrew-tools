cask "supereasy" do
  version "0.1.2"
  sha256 "5cb149f1c9f03147716f2c3b7b2e124465e5c1f123f758613d6f2928cd671a61"

  url "https://github.com/Harumaru169/SuperEasy/releases/download/0.1.2/SuperEasy-App.zip"
  
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
