class RalphOrchestrator < Formula
  include Language::Python::Virtualenv

  desc "AI agent orchestrator using the Ralph Wiggum technique"
  homepage "https://github.com/mikeyobrien/ralph-orchestrator"
  url "https://files.pythonhosted.org/packages/83/2c/6f08f20a75fa01f558d1ba2436d7545defb3c4bc28cd16bfa6e50631bb1a/ralph_orchestrator-1.2.2.tar.gz"
  sha256 "fcce6bd712aa4d17925b52c482c274b8d63cb971dbb2444b4f1d367b9022ea75"
  license "MIT"

  depends_on "python@3.11"
  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/source/P/PyYAML/PyYAML-6.0.2.tar.gz"
    sha256 "d4f0e4c3f9f6e9f4c3fcb6b2f7d4c0d87e5b94b2d8c98b1eb2d287a092f1c6f6"
  end


  def install
    virtualenv_install_with_resources
  end


  test do
    system "#{bin}/ralph", "--help"
  end
end
