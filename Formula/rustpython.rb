class Rustpython < Formula
  desc "Python Interpreter written in Rust"
  homepage "https://rustpython.github.io"
  url "https://github.com/RustPython/RustPython/archive/refs/tags/2025-06-30-main-36.tar.gz"
  version "2025-06-30-main-36"
  sha256 "ce1580d7349896d20fe88eccb0fa6be9bf72a23af7a0c384d63c9978a8bbdb1a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--features", "ssl", "--features", "freeze-stdlib", *std_cargo_args
  end

  test do
    assert_equal "Hello, World!", shell_output("#{bin}/rustpython -c \"print('Hello, World!')\"").strip
  end
end
