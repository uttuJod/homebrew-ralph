class RalphOrchestrator < Formula
  include Language::Python::Virtualenv

  desc "AI agent orchestrator using the Ralph Wiggum technique"
  homepage "https://github.com/mikeyobrien/ralph-orchestrator"
  url "https://github.com/mikeyobrien/ralph-orchestrator/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "D5558CD419C8D46BDC958064CB97F963D1EA793866414C025906EC15033512ED"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ralph", "--help"
  end
end
