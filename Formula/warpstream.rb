class Warpstream < Formula
  desc "WarpStream Kafka-compatible agent"
  homepage "https://warpstream.com"
  version "v806"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_arm64_v806.tar.gz"
      sha256 "4f4e5c79341b00ef304d1f131209693600ee71931fa4e2caf97bf2bccfefbadf"

      def install
        bin.install "warpstream_agent_darwin_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_amd64_v806.tar.gz"
      sha256 "374cb7ceea6fe1854cfd968dbb7f029165ad712582f201e5dd7b22de803207d3"

      def install
        bin.install "warpstream_agent_darwin_amd64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_arm64_v806.tar.gz"
      sha256 "b37736b8d7d2502019e226ef803b36f6babb56a20ec43b5feb74769f5ad79a8d"

      def install
        bin.install "warpstream_agent_linux_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_amd64_v806.tar.gz"
      sha256 "e035520f0416c5445b932f7b607840c9397a0a1ed1568a56583a5b95a2b4e6f8"

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
