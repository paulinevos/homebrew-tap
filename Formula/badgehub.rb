# This file is written by the badgehub-scaffolder release workflow.
class Badgehub < Formula
  desc "Scaffold and manage BadgeHub apps for event badges"
  homepage "https://github.com/paulinevos/badgehub-scaffolder"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.3.0/bh-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f18d3b1f2f8fe42c6b313174a8b31c8408896ef7738af6aa77cc35ff5a68cac"
    end

    on_intel do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.3.0/bh-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "89ec5b5d538c27e02cc50b75651588b2817ef9f668381ff2d012d4f72526cda6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.3.0/bh-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7bcb47fc3bee5a81a797c4acd1ce881fd9e1c5a562f8c580493c5bc35998849"
    end

    on_intel do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.3.0/bh-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22df238c59e2d7351448d8d636edcdd6cb559f5e27b858ca00c84d8b606f3d4c"
    end
  end

  def install
    bin.install "bh"
  end

  test do
    assert_match "Usage: bh", shell_output("#{bin}/bh --help")
    assert_match version.to_s, shell_output("#{bin}/bh --version")
  end
end
