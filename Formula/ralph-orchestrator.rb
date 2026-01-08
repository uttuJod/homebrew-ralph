class RalphOrchestrator < Formula
  include Language::Python::Virtualenv

  desc "AI agent orchestrator using the Ralph Wiggum technique"
  homepage "https://github.com/mikeyobrien/ralph-orchestrator"
  url "https://files.pythonhosted.org/packages/83/2c/6f08f20a75fa01f558d1ba2436d7545defb3c4bc28cd16bfa6e50631bb1a/ralph_orchestrator-1.2.2.tar.gz"
  sha256 "FCCE6BD712AA4D17925B52C482C274B8D63CB971DBB2444B4F1D367B9022EA75"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
  
    # FIX: bootstrap pip explicitly (needed on macOS 12 / Tier-3)
    system venv/"bin/python", "-m", "ensurepip"
    system venv/"bin/python", "-m", "pip", "install", "--upgrade", "pip"
  
    # install the package
    system venv/"bin/pip", "install", ".", "--no-deps"
  
    # expose CLI
    bin.install_symlink libexec/"bin/ralph"
  end


  test do
    system "#{bin}/ralph", "--help"
  end
end
