# Written by scripts/homebrew-formula.mjs in the Harbor repository; don't edit by hand.
class Harbor < Formula
  desc "Portfolio, program and project management in the terminal"
  homepage "https://harborppm.com/ai"
  url "https://registry.npmjs.org/@harborppm/cli/-/cli-0.113.0.tgz"
  sha256 "7609b18186bcbb28c66de61bcfc2fe08f43d7a68e4c1a0925a8f4aaed736e111"
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
