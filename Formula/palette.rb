class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "5e1603fe971d36c73ab19059a181469fd722b1065b790208886e07ea5f505b9c"
  license "MIT"
  version "0.1.6"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
