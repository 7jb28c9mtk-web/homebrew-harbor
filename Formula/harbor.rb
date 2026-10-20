# Written by scripts/homebrew-formula.mjs in the Harbor repository; don't edit by hand.
class Harbor < Formula
  desc "Portfolio, program and project management in the terminal"
  homepage "https://harborppm.com/ai"
  url "https://registry.npmjs.org/@harborppm/cli/-/cli-0.38.0.tgz"
  sha256 "5628fe403e78e5a5e62980fba1c5b60fa1ed1e4ad1879fa1483ff70d6f87ee6b"
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
