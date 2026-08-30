class Taskee < Formula
  desc "Terminal task manager with nested subtasks and search"
  homepage "https://codeberg.org/n_malo/taskee"
  url "https://codeberg.org/n_malo/taskee/archive/v1.0.1.tar.gz"
  sha256 "c5e717502bb8128f3c4a77195f6c8435ffefa2cb7bed3d6cca0c3c83b19dd247"
  license "MIT"

  depends_on "python@3.13"

  def install
    bin.install "taskee.py" => "taskee"
    (share/"doc/taskee").install "README.md", "import_planify.py"
    (prefix/"licenses").install "LICENSE"
  end

  test do
    system "python3", "-c", "import py_compile; py_compile.compile('#{bin}/taskee', doraise=True)"
  end
end
