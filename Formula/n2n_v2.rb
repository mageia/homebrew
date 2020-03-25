class N2nV2 < Formula
  desc ""
  homepage ""
  url "https://github.com/mageia/n2n", :using => :git, :tag => "2.6-stable"

  depends_on "cmake" => :build
  depends_on "openssl" => :build

  def install
    system "mkdir", "build"
    system "cd", "build"
    system "cmake", "-DOPENSSL_ROOT_DIR=/usr/local/opt/openssl", ".."
    system "make"
  end

  test do
    system "false"
  end
end
