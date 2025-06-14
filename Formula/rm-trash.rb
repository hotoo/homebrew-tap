class RmTrash < Formula
  desc "Shell script to move files to trash instead of deleting"
  homepage "https://github.com/hotoo/rm-trash"
  url "https://github.com/hotoo/rm-trash/archive/refs/tags/1.2.2.tar.gz"
  sha256 "8f3f363266e85f8f3672490a1c470bd96942d3984d589c68cd6a38ce55218ebc"
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
