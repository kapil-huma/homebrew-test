# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rub
class Testscript < Formula
  desc ""
  homepage ""
  url "https://github.com/kapil-huma/testscript/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ac7ca89c4adb48110bfb303e066a6421eacf7b64df9aae3695d83115753b4ed9"
  license ""

  # depends_on "cmake" => :build

  def install
	bin.install "testscript"
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test testscript`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
