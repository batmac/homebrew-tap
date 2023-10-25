# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ccatos < Formula
  desc "cat on steroids."
  homepage ""
  version "1.13.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/batmac/ccat/releases/download/v1.13.4/ccat-1.13.4-darwin-arm64.tar.gz"
      sha256 "efbda32f80b4b667d1adc44c5e94961751c0b278a16cb46b5d70fcf94f03ee0f"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/batmac/ccat/releases/download/v1.13.4/ccat-1.13.4-darwin-amd64.tar.gz"
      sha256 "7371c3a7b453140fe7c14f6a217818cb2c44d39ce80c3140ce2d5f60fdf16d3b"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/batmac/ccat/releases/download/v1.13.4/ccat-1.13.4-linux-armv6.tar.gz"
      sha256 "92660a109926a15487dfa7ded0ab22340db843e9d113cccc04161b4944cd827a"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/batmac/ccat/releases/download/v1.13.4/ccat-1.13.4-linux-amd64.tar.gz"
      sha256 "0e85420716cea2a40c93c33961f10590801fdd71dd10cfb1394efd909ecaed34"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/batmac/ccat/releases/download/v1.13.4/ccat-1.13.4-linux-arm64.tar.gz"
      sha256 "306a51c78060cdc0408a11935ef39c5de5a85686e924b23040dd92e7590ea277"

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
