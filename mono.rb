require 'formula'

class Mono < Formula
  homepage 'http://www.mono-project.com/'

  url "http://download.xamarin.com/MonoFrameworkMDK/Macx86/#{mono_pkg_filename}"
  sha1 'f3f8eca1232989327240bbb6a7a000250003c33e'

  def mono_version
    '3.2.6'
  end

  def mono_pkg_filename
    "MonoFramework-MDK-${mono_version}.macos10.xamarin.x86.pkg"
  end

  def install
    system "installer", %Q[-pkg "#{mono_pkg_filename}" -target /]
  end

  test do
    system "mono", "--version"
  end
end
