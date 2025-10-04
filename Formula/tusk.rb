class Tusk < Formula
  desc "Simple terminal based daily todo manager"
  homepage "https://github.com/john-crossley/tusk"
  url "https://github.com/john-crossley/tusk/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "c2fbb8c2e9b915afbad1605c889b05cd9b36fd6a04f6d91dbbc6f47923969bd3"
  license "MIT"

  bottle do
    root_url "https://github.com/john-crossley/homebrew-tap/releases/download/tusk-0.1.2"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "beb74eab8f52d3ca0df196bf4f3106fe4419066cace3338374dd978da67b444d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tusk --version")
  end
end
