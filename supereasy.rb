cask "supereasy" do
  version "0.1.0"
  sha256 "e2fc9a69fc5ee6df485c47a521f7144113921c4d4f9fc77853767ee8235427f4"

  url "https://github.com/Harumaru169/SuperEasy/releases/download/0.1.0/SuperEasy-App.zip"
  
  name "SuperEasy"
  desc "Just a sample project"
  homepage "https://github.com/Harumaru169/SuperEasy"

  app "SuperEasy.app"
  
  postflight do

    # system_command "/usr/bin/xattr",
    #                args: ["-rd", "com.apple.quarantine", "#{appdir}/SuperEasy.app"],
    #                sudo: false
    
    # 2. アドホック署名を上書き（Extensionを確実にロードさせるため）
    # system_command "/usr/bin/codesign",
    #                args: ["--force", "--deep", "--sign", "-", "#{appdir}/SuperEasy.app"],
    #                sudo: false
  end

  zap trash: [
  ]
end