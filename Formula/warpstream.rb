class Warpstream < Formula
  desc "WarpStream Kafka-compatible agent"
  homepage "https://warpstream.com"
  version "v837"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_arm64_v837.tar.gz"
      sha256 "ce45cfbf8f751af180b3fd80235c9b4241e4a75e6c4e5b129bfe5f01de3aac18"

      def install
        bin.install "warpstream_agent_darwin_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_amd64_v837.tar.gz"
      sha256 "3fcae51b60a84e5b7b95b9bf0306d8cb467e62d7110b37b8e24119b3445b946c"

      def install
        bin.install "warpstream_agent_darwin_amd64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_arm64_v837.tar.gz"
      sha256 "6fbe32587fda68a37e3476cf81c1f25c9b798e266aaf7a28fd458271daa56448"

      def install
        bin.install "warpstream_agent_linux_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_amd64_v837.tar.gz"
      sha256 "a482f05e9cd9081ecee4529339f05efcee91bed5898b0d8365d48e6b8367e77f"

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
