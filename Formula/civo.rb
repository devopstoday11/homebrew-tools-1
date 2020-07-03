# This file was generated by GoReleaser. DO NOT EDIT.
class Civo < Formula
  desc "CLI for managing Civo resources."
  homepage "https://github.com/civo/cli"
  version "0.6.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/civo/cli/releases/download/v0.6.9/civo-0.6.9-darwin-amd64.tar.gz"
    sha256 "6576a852be20c6fa4479ad5e1c76ced133bdabc2f27ad223c01e0012e09ebcf5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/civo/cli/releases/download/v0.6.9/civo-0.6.9-linux-amd64.tar.gz"
      sha256 "81aba4c052d0ca9bbc74bb1c6e60f25b150829b314f5a1a5e7e073bdbc6b47fa"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
      else
        url "https://github.com/civo/cli/releases/download/v0.6.9/civo-0.6.9-linux-arm.tar.gz"
        sha256 "3cc1ca56d8d29ef9113b771e23fd09bb4938073f9f085cc3f1de3cf8bbf0f28c"
      end
    end
  end

  def install
    bin.install "civo"
  end
end
