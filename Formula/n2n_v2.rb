class N2nV2 < Formula
  desc ""
  homepage "https://github.com/mageia/n2n_v2"
  url "https://github.com/mageia/n2n_v2", :using => :git, :tag => "v2.4"

  depends_on "cmake" => :build
  depends_on "openssl" => :build

  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end

  test do
    system "false"
  end
end
