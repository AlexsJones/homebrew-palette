class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "4bf194a79a9589794c7d6fd71b2800fdf3306389f188fe7dc83eb5be3e0a124e"
  license "MIT"
  version "0.0.6"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
