class Warpstream < Formula
  desc "WarpStream Kafka-compatible agent"
  homepage "https://warpstream.com"
  version "v821"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_arm64_v821.tar.gz"
      sha256 "4f6af011c16684310b95dbc439de83d6ee8ead4b724d076481d3429d83045528"

      def install
        bin.install "warpstream_agent_darwin_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_darwin_amd64_v821.tar.gz"
      sha256 "0d14018e2111530de48dfc687f16cec67f1219761c3673f5ef71f97695f54baa"

      def install
        bin.install "warpstream_agent_darwin_amd64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_arm64_v821.tar.gz"
      sha256 "39d25fefdec8d5e217b0fb84a6339a887be561a7480d7ce9d121ca82a308542c"

      def install
        bin.install "warpstream_agent_linux_arm64" => "warpstream"
        pkgshare.install "notices.txt", "non_ibm_license.txt"
      end
    end

    on_intel do
      url "https://warpstream-public-us-east-1.s3.us-east-1.amazonaws.com/warpstream_agent_releases/warpstream_agent_linux_amd64_v821.tar.gz"
      sha256 "9fef29753769d107c111aae54dc81397a22305d8fd5bf077da1d60ac3f0d3e59"

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
