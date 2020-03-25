class N2nV2 < Formula
  desc ""
  homepage ""
  url "https://github.com/ntop/n2n", :using => :git, :tag => "2.6-stable"
  # sha256 "d85843f2a3866d2dcf91c9eb948d2b6f192562a1e71ecd3d7ec51845a1a53435"

  depends_on "cmake" => :build
  depends_on "openssl" => :build

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
