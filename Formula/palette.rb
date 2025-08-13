class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "b536181dd3ac51a2c46d7c47dd7b4cb276c73a0d59371c7d2bc58918249e9a78"
  license "MIT"
  version "0.0.7"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
