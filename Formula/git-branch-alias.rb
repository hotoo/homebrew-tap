class GitBranchAlias < Formula
  desc "branch-alias subcommand for git"
  homepage "https://github.com/hotoo/git-branch-alias"
  url "https://github.com/hotoo/git-branch-alias/archive/refs/tags/1.1.0.tar.gz"
  sha256 "0134a316dc173c4cd07cb5394e86441958d1da2f47285e2a75cc0d153dd753f0"
  license "MIT"

  depends_on "bash" # 如果脚本依赖 bash

  def install
    # 复制脚本文件到 bin 目录，重命名为 rm-trash
    bin.install "bin/git-branch-alias" => "git-branch-alias"
  end

  test do
    system "#{bin}/git-branch-alias", "--help"
  end
end
