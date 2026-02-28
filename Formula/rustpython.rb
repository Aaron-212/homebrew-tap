class Rustpython < Formula
  desc "Python Interpreter written in Rust"
  homepage "https://rustpython.github.io"
  url "https://github.com/RustPython/RustPython/archive/refs/tags/2025-11-10-main-55.tar.gz"
  version "2025-11-10-main-55"
  sha256 "d72fa8ebbd668de7e08cfb35098dcfc58af57584b51f0c4dedf0d48cffa11c66"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--features", "ssl", "--features", "freeze-stdlib", *std_cargo_args
  end

  test do
    assert_equal "Hello, World!", shell_output("#{bin}/rustpython -c \"print('Hello, World!')\"").strip
  end
end
