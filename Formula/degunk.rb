class Degunk < Formula
  desc "Interactive dependency and build artifact cleaner"
  homepage "https://github.com/AbdullahHassan192/degunk"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.2/degunk-darwin-arm64.tar.gz"
      sha256 "5464c65b713c763483129f9f36a15f234c517ac1bed330c8aeae6381c9dffa71"
    else
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.2/degunk-darwin-x86_64.tar.gz"
      sha256 "371f4eb05e60401944ed1819a5fe3beb31c607092fb6ea9089c2cb00580da016"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.2/degunk-linux-arm64.tar.gz"
      sha256 "5c394ee274055cd1dcab2b412c89c57fa7679a37250c2bec6d84aff6c9df8fd0"
    else
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.2/degunk-linux-x86_64.tar.gz"
      sha256 "94829ce493c790a34fe9df28d48c81f1ddfc54f559e1d543f7bf6ca5244d2ff8"
    end
  end

  def install
    bin.install "degunk"
  end

  test do
    assert_match "degunk", shell_output("#{bin}/degunk --help")
  end
end
