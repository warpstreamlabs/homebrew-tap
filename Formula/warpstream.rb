class Warpstream < Formula
  desc "WarpStream Kafka-compatible agent"
  homepage "https://warpstream.com"
  version "v811"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_arm64_v811.tar.gz"
      sha256 "a2aa2b7d42c3ece9bba382bb0428da1756d1033296ec26b095022feb1ec864ff"

      def install
        bin.install "warpstream_agent_darwin_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_amd64_v811.tar.gz"
      sha256 "7ce4ebc0dabe7f198c76f7e26f4b4fa464a100502ab6b9217980ffe45cfaaa03"

      def install
        bin.install "warpstream_agent_darwin_amd64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_arm64_v811.tar.gz"
      sha256 "91d40496d277c60aa1469e393b721084657edde2e2f600a3f0c27a9b1314a38e"

      def install
        bin.install "warpstream_agent_linux_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_amd64_v811.tar.gz"
      sha256 "3e705209d7e94b84689462223d7f32dc09cdfbd8088d18ef2c60b792a7e99c90"

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
