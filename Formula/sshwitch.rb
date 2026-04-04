class Sshwitch < Formula
  desc "Manage SSH keys for Git repositories"
  homepage "https://github.com/dimaswisodewo/sshwitch"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dimaswisodewo/sshwitch/releases/download/v0.1.0/sshwitch-arm64.tar.gz"
      sha256 "c592ad942650fa015aafec203d219632763226f4280f3f44a7a0d52faa9d2a63"
    else
      url "https://github.com/dimaswisodewo/sshwitch/releases/download/v0.1.0/sshwitch-x86_64.tar.gz"
      sha256 "04ab1ff26f7236763e5f06c756543b33fc042a42a6aebfa575bb8070f34390f0"
    end
  end

  def install
    bin.install "sshwitch"
  end

  test do
    system "#{bin}/sshwitch", "--version"
  end
end
