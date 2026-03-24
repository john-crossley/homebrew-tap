class Tusk < Formula
  desc "Simple terminal based daily todo manager"
  homepage "https://github.com/john-crossley/tusk"
  url "https://github.com/john-crossley/tusk/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "c2fbb8c2e9b915afbad1605c889b05cd9b36fd6a04f6d91dbbc6f47923969bd3"
  license "MIT"
  head "https://github.com/john-crossley/tusk.git", branch: "main"

  bottle do
    root_url "https://github.com/john-crossley/homebrew-tap/releases/download/tusk-0.1.2"
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "4f9e43480791dc120172a9d6685359014f4525d0a2baae1768e5619f5d87e457"
  end

  depends_on "rust" => :build
  conflicts_with "tusk-beta", because: "both install a tusk binary"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tusk", shell_output("#{bin}/tusk --version")
  end
end
