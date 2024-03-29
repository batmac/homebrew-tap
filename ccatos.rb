# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ccatos < Formula
  desc "cat on steroids."
  homepage ""
  version "1.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/batmac/ccat/releases/download/v1.15.0/ccat-1.15.0-darwin-arm64.tar.gz"
      sha256 "84247a140c8eedd7a48016ddb119b93d9cbcc1992f9f6ac7561cf7844a55f5ea"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/batmac/ccat/releases/download/v1.15.0/ccat-1.15.0-darwin-amd64.tar.gz"
      sha256 "158c7e4a2f5416a820545560288b0b2f98320c2b02bfb3759d4ee455a00b2515"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/batmac/ccat/releases/download/v1.15.0/ccat-1.15.0-linux-armv6.tar.gz"
      sha256 "278eb96a3ae6cab029a7e8fd1392faa1c51baa673e8f3363ed6a8d77c4f03838"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/batmac/ccat/releases/download/v1.15.0/ccat-1.15.0-linux-arm64.tar.gz"
      sha256 "3cdc9a4739d90304fd27391b141a5addd436ec2893f3be002f28631b41a9dab8"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/batmac/ccat/releases/download/v1.15.0/ccat-1.15.0-linux-amd64.tar.gz"
      sha256 "e0f8960817373b1d508cc158ac687864e7ab78e05fcd26b9958830cd77a56efd"

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
