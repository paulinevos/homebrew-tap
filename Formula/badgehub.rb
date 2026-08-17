# This file is written by the badgehub-scaffolder release workflow.
class Badgehub < Formula
  desc "Scaffold and manage BadgeHub apps for event badges"
  homepage "https://github.com/paulinevos/badgehub-scaffolder"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.2.0/bh-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "61d194b55d3f24acf1ec2a0f35f97cf05c936d9a19dd16aabbbc630b816d58a6"
    end

    on_intel do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.2.0/bh-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "acbbfd194f183b57de341d5a9e103fe7d3f11d4b284776be4c5c052bb5a2e683"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.2.0/bh-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32e998f8d29f83381555cd0bf17b7b980484ebe68c60fa7d0de0902493a22a04"
    end

    on_intel do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.2.0/bh-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "854b1d718c536e4a7e1099498e3cc6017eb09d670576489c1d07c9d2d1f256c5"
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
