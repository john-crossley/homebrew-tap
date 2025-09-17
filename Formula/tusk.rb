class Tusk < Formula
  desc "Your one-line description of Tusk"
  homepage "https://github.com/john-crossley/tusk"
  head "https://github.com/john-crossley/tusk.git", branch: "main"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tusk --version")
  end
end