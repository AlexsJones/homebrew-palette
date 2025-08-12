class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "6141c8d3d5a1bd3c8ae37896b7e1c22a6cde5667aa7a06d08ec57abaf55038fb"
  license "MIT"
  version "0.0.3"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
