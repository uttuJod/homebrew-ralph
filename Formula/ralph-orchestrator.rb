class RalphOrchestrator < Formula
  include Language::Python::Virtualenv

  desc "AI agent orchestrator using the Ralph Wiggum technique"
  homepage "https://github.com/mikeyobrien/ralph-orchestrator"
  url "https://files.pythonhosted.org/packages/83/2c/6f08f20a75fa01f558d1ba2436d7545defb3c4bc28cd16bfa6e50631bb1a/ralph_orchestrator-1.2.2.tar.gz"
  sha256 "FCCE6BD712AA4D17925B52C482C274B8D63CB971DBB2444B4F1D367B9022EA75"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ralph", "--help"
  end
end
