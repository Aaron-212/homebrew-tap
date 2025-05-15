class Rustpython < Formula
  desc "Python Interpreter written in Rust"
  homepage "https://rustpython.github.io"
  url "https://github.com/RustPython/RustPython/archive/refs/tags/2025-05-12-main-29.tar.gz"
  version "2025-05-12-main-29"
  sha256 "1b06f43d98e42dcc05c49a47050181d48b58c892b3686f52a88251dc73de71b9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--features", "ssl", "--features", "freeze-stdlib", *std_cargo_args
  end

  test do
    assert_equal "Hello, World!", shell_output("#{bin}/rustpython -c \"print('Hello, World!')\"").strip
  end
end
