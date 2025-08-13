class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "9ba1c982637bdd8b844333fccee141a5a5e243a940a945c7b445f191520ac83e"
  license "MIT"
  version "0.0.8"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
