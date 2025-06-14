class RmTrash < Formula
  desc "Shell script to move files to trash instead of deleting"
  homepage "https://github.com/hotoo/rm-trash"
  url "https://github.com/hotoo/rm-trash/releases/download/1.2.3/rm-trash-1.2.3.tar.gz"
  sha256 "4c5eb8f4300e6bea357908896a45fcd17d5541e237d28360077c60b6c6a5819c"
  license "MIT"

  depends_on "bash" # 如果脚本依赖 bash

  def install
    # 复制脚本文件到 bin 目录，重命名为 rm-trash
    bin.install "bin/rm-trash" => "rm-trash"
  end

  test do
    system "#{bin}/rm-trash", "--help"
  end
end
