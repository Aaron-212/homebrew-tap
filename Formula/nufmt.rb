class Nufmt < Formula
  desc "Nushell script formatter"
  homepage "https://github.com/nushell/nufmt"
  license "MIT"
  head "https://github.com/nushell/nufmt.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "nufmt: #{version}", shell_output("#{bin}/nufmt --version").strip
  end
end
