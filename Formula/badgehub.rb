# This file is written by the badgehub-scaffolder release workflow.
class Badgehub < Formula
  desc "Scaffold and manage BadgeHub apps for event badges"
  homepage "https://github.com/paulinevos/badgehub-scaffolder"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.4.2/bh-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "274d80dc9a988ba4906e06caebc5ab63bf7dfafdf8b9d142b723e2989fe83f01"
    end

    on_intel do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.4.2/bh-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "a5b8e8bd9e8abf99f16c1cd78a2c78bad3efeb8cdf70bd97f10372d3f211042e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.4.2/bh-0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ca071c6e0c2516927c8b320a2292c3c244571ccd59766c4b67caff848b0dff5"
    end

    on_intel do
      url "https://github.com/paulinevos/badgehub-scaffolder/releases/download/v0.4.2/bh-0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cecc88477dd2c31b1ab8cc24892eeb6fa7c8c9201cae633cb04dc7ba8291222f"
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
