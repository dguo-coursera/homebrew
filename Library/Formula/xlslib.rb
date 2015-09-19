require "formula"

class Xlslib < Formula
  desc "C++/C library to construct Excel .xls files in code"
  homepage "http://sourceforge.net/projects/xlslib"
  url "https://downloads.sourceforge.net/project/xlslib/xlslib-old/xlslib-package-2.4.0.zip"
  sha1 "73447c5c632c0e92c1852bd2a2cada7dd25f5492"

  bottle do
    cellar :any
    revision 2
    sha256 "4eec9d433ab0e89aedf4fa6ccaf7d9be555519c574a4c0cd1cd2cd80a57eab77" => :el_capitan
    sha256 "41398d8c2e6c8349ea752eb0d2d9cdbc560ec43cb91e0622b786a2b28d6341de" => :yosemite
    sha256 "a984b3016532ffaeee04cffb60b19e61aa44ab70ad4fcf91a6f8daa87319e744" => :mavericks
  end

  def install
    cd "xlslib"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
