class RmTrash < Formula
  desc "Shell script to move files to trash instead of deleting"
  homepage "https://github.com/hotoo/rm-trash"
  url "https://github.com/hotoo/rm-trash/archive/refs/tags/1.2.1.tar.gz"
  sha256 "a7e8963680d54f56efdd2284a1d7211bf08dcf3df1013419221f303b878a27e8"
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