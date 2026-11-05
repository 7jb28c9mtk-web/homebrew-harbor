# Written by scripts/homebrew-formula.mjs in the Harbor repository; don't edit by hand.
class Harbor < Formula
  desc "Portfolio, program and project management in the terminal"
  homepage "https://harborppm.com/ai"
  url "https://registry.npmjs.org/@harborppm/cli/-/cli-0.82.0.tgz"
  sha256 "c06f6259eae99faa0ce41cf2919e7b3a7d89bf378dab140891c1072757b7b41e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/harbor --version")
  end
end
