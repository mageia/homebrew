class N2nV2 < Formula
  desc ""
  homepage "https://github.com/mageia/n2n"

  depends_on "cmake" => :build
  depends_on "openssl" => :build


  head do
    url "https://github.com/mageia/n2n", :using => :git, :tag => "2.6-stable"
  end

  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      # system "cmake", "-DOPENSSL_ROOT_DIR=/usr/local/opt/openssl", ".."
      system "make"
      # system "make", "install"
  end

  test do
    system "false"
  end
end
