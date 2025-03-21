# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ccatos < Formula
  desc "cat on steroids."
  homepage ""
  version "1.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/batmac/ccat/releases/download/v1.18.0/ccat-1.18.0-darwin-amd64.tar.gz"
      sha256 "3212f56b6d296ca8f0ab6f78ed7a6a681b8a8b232349262b5888796f0bdf14b4"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/batmac/ccat/releases/download/v1.18.0/ccat-1.18.0-darwin-arm64.tar.gz"
      sha256 "27582f74f0af9597a39622ad7549a20531ce29fd7016f0802cba2d312df0718b"

      def install
        bin.install "ccat"
        (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/batmac/ccat/releases/download/v1.18.0/ccat-1.18.0-linux-amd64.tar.gz"
        sha256 "7d356ebf0470390582ff6addbe9306c800c64db499c960378283c9667ea1a636"

        def install
          bin.install "ccat"
          (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/batmac/ccat/releases/download/v1.18.0/ccat-1.18.0-linux-armv6.tar.gz"
        sha256 "8ef9e8fa116879db940a7728e7ea75619878101801c6010bffdc2805b0b97fcf"

        def install
          bin.install "ccat"
          (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/batmac/ccat/releases/download/v1.18.0/ccat-1.18.0-linux-arm64.tar.gz"
        sha256 "1d8f2346e177f32e3dead65481c6bd8c357c166f7c349aa6c6437f981db5eb8a"

        def install
          bin.install "ccat"
          (bash_completion/"ccatos").write `#{bin}/ccat --completion bash`
        end
      end
    end
  end

  conflicts_with "ccat"
  conflicts_with "ccrypt"

  test do
    system "#{bin}/ccat --version"
  end
end
