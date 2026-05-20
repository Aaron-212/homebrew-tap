class PayRespects < Formula
  desc "Command suggestions, command-not-found and thefuck replacement written in Rust"
  homepage "https://codeberg.org/iff/pay-respects"
  url "https://codeberg.org/iff/pay-respects/archive/v0.8.8.tar.gz"
  sha256 "4be5b2602f939bf279db0f4428f0766e91e0fc53ea0f08b03a91d908bc173203"
  license "AGPL-3.0"
  head "https://codeberg.org/iff/pay-respects.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "core")
    system "cargo", "install", *std_cargo_args(path: "module-runtime-rules")
    system "cargo", "install", *std_cargo_args(path: "module-request-ai")
  end

  test do
    assert_equal "version: #{version}", shell_output("#{bin}/pay-respects --version").strip
  end
end
