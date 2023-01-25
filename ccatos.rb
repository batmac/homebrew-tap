# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ccatos < Formula
  desc "cat on steroids."
  homepage ""
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/batmac/ccat/releases/download/v1.8.0/ccat-1.8.0-darwin-arm64.tar.gz"
      sha256 "da580473a8c40b043a9b7d3fd7cc5bbcaf0b982cefa810ac427ee2d34cdd02f3"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/batmac/ccat/releases/download/v1.8.0/ccat-1.8.0-darwin-amd64.tar.gz"
      sha256 "809f1d4004de12ad4a9c418e897d82076e4acb226d345d077e94a8c9c4c28019"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/batmac/ccat/releases/download/v1.8.0/ccat-1.8.0-linux-armv6.tar.gz"
      sha256 "d5d64a18e861f20a07627a60465cfc9fecb50b5f27254935159cb4aeaa1c1666"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/batmac/ccat/releases/download/v1.8.0/ccat-1.8.0-linux-arm64.tar.gz"
      sha256 "b0d43eb4e48a89a0e33edd8967fdb76259e5f1de4051a74c46abc4cb656b62ca"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/batmac/ccat/releases/download/v1.8.0/ccat-1.8.0-linux-amd64.tar.gz"
      sha256 "ec04d7bb3bddefd7bc0ebb27db765013417df065c093883b59fd6c384ce6ec55"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
  end

  conflicts_with "ccat"
  conflicts_with "ccrypt"

  test do
    system "#{bin}/ccat --version"
  end
end
