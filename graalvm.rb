class Graalvm < Formula
  desc "GraalVM: Run Programs Faster Anywhere"
  homepage "https://www.graalvm.org/"
  url "https://github.com/oracle/graal/releases/download/vm-19.1.1/graalvm-ce-darwin-amd64-19.1.1.tar.gz"
  sha256 "85711322866ddacda88d3a592c76520188b3d7c40b6c39cd9943856e72eb6c72"
  version "19.1.1"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/Contents/Home/bin/javac" => "gjavac"
    bin.install_symlink "#{libexec}/Contents/Home/bin/java" => "gjava"
    bin.install_symlink "#{libexec}/Contents/Home/bin/native-image" => "gnative-image"
  end
end
