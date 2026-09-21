class Degunk < Formula
  desc "Interactive dependency and build artifact cleaner"
  homepage "https://github.com/AbdullahHassan192/degunk"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.1/degunk-darwin-arm64.tar.gz"
      sha256 "2d6c8e574f2cb6dab471be7a2a2ee5cfbc1b26a976e14bfd8ed9a266ded41475"
    else
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.1/degunk-darwin-x86_64.tar.gz"
      sha256 "8b0d8138890e26576b57aaf5f36d52029083ebb3e63e58a862504f19ba3a3cd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.1/degunk-linux-arm64.tar.gz"
      sha256 "9d691945ceb6a0ec168aecb0a8b209e8327d0f15447afde7d628acab734c714c"
    else
      url "https://github.com/AbdullahHassan192/degunk/releases/download/v0.1.1/degunk-linux-x86_64.tar.gz"
      sha256 "69ae0f10bbaf55c51942f7f9a2a22f4dfa00f381b7966b5aee482897b1901cdc"
    end
  end

  def install
    bin.install "degunk"
  end

  test do
    assert_match "degunk", shell_output("#{bin}/degunk --help")
  end
end
