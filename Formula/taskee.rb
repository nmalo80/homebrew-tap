class Taskee < Formula
  desc "Terminal task manager with nested subtasks and search"
  homepage "https://codeberg.org/n_malo/taskee"
  url "https://codeberg.org/n_malo/taskee/archive/v1.0.2.tar.gz"
  sha256 "f62677ccff586a04a5532afb64cace92c48e6174bccb0bbeb4397a2a4e455709"
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
