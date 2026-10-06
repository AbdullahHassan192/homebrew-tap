class Degunk < Formula
  desc "Interactive dependency and build artifact cleaner"
  homepage "https://github.com/AbdullahHassan192/degunk"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.3/degunk-darwin-arm64.tar.gz"
      sha256 "909ee8c510391d3a3dec0739c1169142aa9c2ee762681550317453a60273ab48"
    else
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.3/degunk-darwin-x86_64.tar.gz"
      sha256 "ba186173661c829b361d67156363fcbb97b8f733e5a3c053d00b452f0e34570b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.3/degunk-linux-arm64.tar.gz"
      sha256 "3ec111a3e02e64d88d74a6addb90ef0145f04b09f8adbc99b5c502121a92d15e"
    else
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.3/degunk-linux-x86_64.tar.gz"
      sha256 "d84f86e9109d9591b2e6743dec4c2b19798c4fbbce9096cf27c7d95e2fbc54f7"
    end
  end

  def install
    bin.install "degunk"
  end

  test do
    assert_match "degunk", shell_output("#{bin}/degunk --help")
  end
end