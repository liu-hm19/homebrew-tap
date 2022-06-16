# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kusionup < Formula
  desc "A version management tool for kusion"
  homepage "https://github.com/KusionStack/kusionup"
  version "0.2.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/kusionup/releases/download/v0.2.18/kusionup_0.2.18_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "7fdbe1d822fb5ac900778fbda44e5d0cb342d2b79c73bb8e4bfe3c000bb1945d"

      def install
        bin.install "kusionup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/kusionup/releases/download/v0.2.18/kusionup_0.2.18_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "cee074a5b31ceb25aea31462b608cd3c1bb195a1fbb65e74d71406af106e34a8"

      def install
        bin.install "kusionup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/kusionup/releases/download/v0.2.18/kusionup_0.2.18_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "d433ccb56cea5360bd3588a80cf7270724d6cb3e621796426c06fbbd747eab93"

      def install
        bin.install "kusionup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/KusionStack/kusionup/releases/download/v0.2.18/kusionup_0.2.18_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "debc6ff8d6a40faff18111e010126ec7bc3e8d021a6fcf402a84b830594f7ac9"

      def install
        bin.install "kusionup"
      end
    end
  end

  test do
    system "#{bin}/kusionup version"
  end
end
