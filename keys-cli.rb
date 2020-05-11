require "language/node"

class KeysCli < Formula
  desc "Fetch and load encrypted environment variables at runtime; Manage runtime environments."
  homepage "https://www.keys.cm"
  url "https://registry.npmjs.org/keys-cli/-/keys-cli-2.5.0.tgz"
  sha256 "2816ddb3d5db64b81f206bbf4f44004961452da1ec2db70f8c354cbea1e56205"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/keys", "--reset"
  end
end
