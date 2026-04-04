class Sshwitch < Formula
  desc "Manage SSH keys for Git repositories"
  homepage "https://github.com/dimaswisodewo/sshwitch"
  version ".0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dimaswisodewo/sshwitch/releases/download/v.0.1.0/sshwitch-arm64.tar.gz"
      sha256 "bf1c8170b218cb0b24e1984c3ec417bc96aaa1bdc9c0447427a5e6ca6aef0424"
    else
      url "https://github.com/dimaswisodewo/sshwitch/releases/download/v.0.1.0/sshwitch-x86_64.tar.gz"
      sha256 "73b36a8c290bed389681cadaf1b3d75fe6ad4e37336098fa6f511d3500751ed4"
    end
  end

  def install
    bin.install "sshwitch"
  end

  test do
    system "#{bin}/sshwitch", "--version"
  end
end
