class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "6e03bdb5b907e5a68d4fbdc41dfccb34b99ad9009558836c7d1483ebaac37aa3"
  license "MIT"
  version "0.1.5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
