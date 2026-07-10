class Warpstream < Formula
  desc "WarpStream Kafka-compatible agent"
  homepage "https://warpstream.com"
  version "v820"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_arm64_v820.tar.gz"
      sha256 "73daecf4cdf395f8754cfb9a5b3e3c313cbab09b758ebe602fd9408b6d467fbb"

      def install
        bin.install "warpstream_agent_darwin_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_amd64_v820.tar.gz"
      sha256 "72280f46fbe1b2ecf98931098da69b989bf75cafcd08e79cf0546a4ba8a15ab6"

      def install
        bin.install "warpstream_agent_darwin_amd64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_arm64_v820.tar.gz"
      sha256 "e963bbeb895b39bd81e28b93ae4eb9383aaa5c2459fa3398d8d706f1587211a6"

      def install
        bin.install "warpstream_agent_linux_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_amd64_v820.tar.gz"
      sha256 "40bd70125e41a0a64be78b1a38c0c9b015e62138189863db464dde9af6a29929"

      def install
        bin.install "warpstream_agent_linux_amd64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end
  end

  test do
    assert_match "warpstream", shell_output("#{bin}/warpstream --help 2>&1", 0..1)
  end
end
