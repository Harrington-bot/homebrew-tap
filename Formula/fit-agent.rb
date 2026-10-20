class FitAgent < Formula
  desc "Sync an agent-friendly fitness workspace with Intervals.icu"
  homepage "https://github.com/jogvan-k/fit-agent"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jogvan-k/fit-agent/releases/download/v0.1.0/fit-agent_v0.1.0_darwin_arm64.tar.gz"
      sha256 "93b53781fae7a1acd67ac7ff64822998675ad62023e2ad9db63586a13cc7cd1c"
    else
      url "https://github.com/jogvan-k/fit-agent/releases/download/v0.1.0/fit-agent_v0.1.0_darwin_amd64.tar.gz"
      sha256 "fa19ea50423d19d1c86ff99a015c658b0ab2915ab3c4b347a3bc7fb4365d39b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jogvan-k/fit-agent/releases/download/v0.1.0/fit-agent_v0.1.0_linux_arm64.tar.gz"
      sha256 "15b0b5e945399f883f0a8422ffbcd52e33b33059f73f59382bc0a5facc3252ad"
    else
      url "https://github.com/jogvan-k/fit-agent/releases/download/v0.1.0/fit-agent_v0.1.0_linux_amd64.tar.gz"
      sha256 "4b4291c9caddc0586dbd086d405abaa0066d20e6b3800793ed30a1f32adee9fa"
    end
  end

  def install
    bin.install "fit-agent"
  end

  test do
    assert_match "fit-agent", shell_output("#{bin}/fit-agent --help")
  end
end
