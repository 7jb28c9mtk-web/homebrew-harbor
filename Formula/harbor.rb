# Written by scripts/homebrew-formula.mjs in the Harbor repository; don't edit by hand.
class Harbor < Formula
  desc "Portfolio, program and project management in the terminal"
  homepage "https://harborppm.com/ai"
  url "https://registry.npmjs.org/@harborppm/cli/-/cli-0.68.0.tgz"
  sha256 "a11363451bd562e851f5063931169386f95511372013122648d9603ded3eebb3"
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
