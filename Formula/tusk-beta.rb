class TuskBeta < Formula
  desc "Simple terminal based daily todo manager (beta)"
  homepage "https://github.com/john-crossley/tusk"
  url "https://github.com/john-crossley/tusk.git",
      tag: "v0.1.3-beta.1",
      revision: "8c133288b51616aae92035b0ec7ba770e574e030"
  version "0.1.3-beta.1"
  license "MIT"

  conflicts_with "tusk", because: "both install a tusk binary"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tusk", shell_output("#{bin}/tusk --version")
  end
end
