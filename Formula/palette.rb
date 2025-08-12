class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "a81bd529d647a101654de08e496f4eb77e67be5650309c6732a41f2eea35f0ba"
  license "MIT"
  version "0.0.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
