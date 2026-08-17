# This file is written by the badgehub-scaffolder release workflow.
class Badgehub < Formula
  desc "Scaffold and manage BadgeHub apps for event badges"
  homepage "https://github.com/paulinevos/badgehub-scaffolder"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.1.0/bh-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d5149d1f55e0a36ad569e8337b4e2403a183498f342a6696e772a270f13a6642"
    end

    on_intel do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.1.0/bh-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0d8b176a62060442a3d61a68bc92a35f81352dd5fb2529cab2097eeef11b7ff9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.1.0/bh-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7d2213a0424c4052ae84a41bc6e296243e4321fa8a20cc624ec0a476a91f357"
    end

    on_intel do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.1.0/bh-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "172868ef4537e263e2e058647fa6405abd6292fdb6069aaa2ee63b4114a56a37"
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
