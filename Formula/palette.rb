class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "e0788f6d6e952d60a3858463d6d1c51262e88d1bd4d409859baf7a88d71be3fb"
  license "MIT"
  version "0.0.9"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
