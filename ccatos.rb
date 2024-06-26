# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ccatos < Formula
  desc "cat on steroids."
  homepage ""
  version "1.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/batmac/ccat/releases/download/v1.15.2/ccat-1.15.2-darwin-amd64.tar.gz"
      sha256 "2812f3752ab32a1d7670a22b75598f92bbc57c5c56bd1feed5e2297557808556"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/batmac/ccat/releases/download/v1.15.2/ccat-1.15.2-darwin-arm64.tar.gz"
      sha256 "9fcd103345e08a18b9107662d36911c0043f82fe321be8e1175590eb985aebb2"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/batmac/ccat/releases/download/v1.15.2/ccat-1.15.2-linux-amd64.tar.gz"
      sha256 "716c5a618aa9c2099fcb7b31ad5f3570b13efed3a3056a921edc07dae3340ec7"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/batmac/ccat/releases/download/v1.15.2/ccat-1.15.2-linux-armv6.tar.gz"
      sha256 "22e2294388e0bce3ecaf18300ee42a30033112655d57a38f4d60745478380d7b"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/batmac/ccat/releases/download/v1.15.2/ccat-1.15.2-linux-arm64.tar.gz"
      sha256 "4fd7e7c7bb8bf93b63ffbb6cc478d8251d2ef3bebc0068a2de787de5528b4558"

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
