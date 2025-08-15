class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "11c7e42ca7c108af4d9ec1e7be50383082fe64881e561dbf3fc0cda6ca097dc7"
  license "MIT"
  version "0.1.2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
