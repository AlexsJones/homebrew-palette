class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "0b18fea9a96738fd404285de8810c062e2252b502f99f69a3c0bca2e4ca41a8f"
  license "MIT"
  version "0.0.5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
