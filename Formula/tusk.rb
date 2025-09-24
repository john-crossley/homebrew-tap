class Tusk < Formula
  desc "Simple terminal based daily todo manager"
  homepage "https://github.com/john-crossley/tusk"
  url "https://github.com/john-crossley/tusk/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "9e37bc5f94a51345881f74da411e1d16b96dc04a3717de9ae0c8f44e7c611022"
  license "MIT"

  bottle do
    root_url "https://github.com/john-crossley/homebrew-tap/releases/download/tusk-0.1.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "544548386cb2df5eff54674260a7f0df53287f7a92fbafb036942546aebc0072"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tusk --version")
  end
end
