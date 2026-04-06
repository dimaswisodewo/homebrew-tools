class Sshwitch < Formula
  desc "Manage SSH keys for Git repositories"
  homepage "https://github.com/dimaswisodewo/sshwitch"
  version ".1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dimaswisodewo/sshwitch/releases/download/v.1.0.0/sshwitch-arm64.tar.gz"
      sha256 "2edb0dee9d160936f5ec938edc41b81f1b7af37914945194923b6685e37e8f23"
    else
      url "https://github.com/dimaswisodewo/sshwitch/releases/download/v.1.0.0/sshwitch-x86_64.tar.gz"
      sha256 "f38cd8bd9c72d885bc78c3c8f3023b73f27e7949092a820cd6b027776eef94d9"
    end
  end

  def install
    bin.install "sshwitch"
  end

  test do
    system "#{bin}/sshwitch", "--version"
  end
end
