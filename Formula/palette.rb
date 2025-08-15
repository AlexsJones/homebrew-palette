class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "9fb121dad9a0cc24665256a82aa6ee83b3b39a95d67f800dc53d69adde4b19a1"
  license "MIT"
  version "0.1.3"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
