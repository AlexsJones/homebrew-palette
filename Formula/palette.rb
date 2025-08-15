class Palette < Formula
  desc "Manage all your GitHub repositories with ease."
  homepage "https://github.com/AlexsJones/palette"
  url "https://github.com/AlexsJones/palette/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "e488d866264f6e872a19a78ae8a3b4e70715828fc1251b29cfed7f846860ad13"
  license "MIT"
  version "0.1.4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "palette", shell_output("#{bin}/palette --help")
  end
end
