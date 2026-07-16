class Sshwitch < Formula
  desc "Manage SSH keys for Git repositories"
  homepage "https://github.com/dimaswisodewo/sshwitch"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dimaswisodewo/sshwitch/releases/download/v1.1.0/sshwitch-arm64.tar.gz"
      sha256 "270236cfa5a742f023d532f241012c3d2c6f23b6fba57be2acce0d0b83d4b752"
    else
      url "https://github.com/dimaswisodewo/sshwitch/releases/download/v1.1.0/sshwitch-x86_64.tar.gz"
      sha256 "3a5b6639d7f3d4970b67e0bec3d578f7566d1c33197eda12334028e48784dc5a"
    end
  end

  def install
    bin.install "sshwitch"
  end

  test do
    system "#{bin}/sshwitch", "--version"
  end
end
