class N2nV1 < Formula
  desc ""
  homepage ""
  url "https://github.com/mageia/n2n_v1/archive/v1.3.2.tar.gz"
  sha256 "96dca7e5ffefb46216703384f93d3a189a2b29d0126c24b4e77d7a7a98e257cd"

  # depends_on "cmake" => :build
  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
