# Written by scripts/homebrew-formula.mjs in the Harbor repository; don't edit by hand.
class Harbor < Formula
  desc "Portfolio, program and project management in the terminal"
  homepage "https://harborppm.com/ai"
  url "https://registry.npmjs.org/@harborppm/cli/-/cli-0.44.0.tgz"
  sha256 "b10fec6428227360e0c2d4aab40137ce35a293e4f4237b76539ee2145a1a3248"
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
