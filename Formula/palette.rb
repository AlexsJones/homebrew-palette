class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "7d0cbb2ed55eb70325178b9b4a5814bf282471c8c8950e7f04c7cac831c91476"
  license "MIT"
  version "0.0.4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
