require 'formula'

class Mono < Formula
  homepage 'http://www.mono-project.com/'

  url "http://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-3.2.6.macos10.xamarin.x86.pkg"
  sha1 'f3f8eca1232989327240bbb6a7a000250003c33e'

  def install
    system "installer", "-pkg", "MonoFramework-MDK-3.2.6.macos10.xamarin.x86.pkg", "-target", "/"
  end

  test do
    system "mono", "--version"
  end
end
