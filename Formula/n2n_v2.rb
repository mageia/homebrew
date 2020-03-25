class N2nV2 < Formula
  desc ""
  homepage "https://github.com/mageia/n2n"
  url "https://github.com/mageia/n2n", :using => :git, :tag => "2.6-stable"

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
