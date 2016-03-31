require "formula"

class Kf5Kdevplatform < Formula
  url "http://download.kde.org/unstable/kdevelop/4.90.91/src/kdevplatform-4.90.91.tar.xz"
  sha256 "6e4014c2073207794e48fe77a051a565da1f3d2337df495cb54ff064d767196f"
  homepage "http://www.kde.org/"

  head 'git://anongit.kde.org/kdevplatform.git'

  depends_on "cmake" => :build
  depends_on "haraldf/kf5/kf5-extra-cmake-modules" => :build
  depends_on "qt5" => "with-d-bus"
  depends_on "kf5-karchive"
  depends_on "kf5-kconfig"
  depends_on "kf5-kguiaddons"
  depends_on "kf5-kwidgetsaddons"
  depends_on "kf5-kiconthemes"
  depends_on "kf5-ki18n"
  depends_on "kf5-kitemmodels"
  depends_on "kf5-kitemviews"
  depends_on "kf5-kjobwidgets"
  depends_on "kf5-kcmutils"
  depends_on "kf5-kio"
  depends_on "kf5-knewstuff"
  depends_on "kf5-knotifications"
  depends_on "kf5-knotifyconfig"
  depends_on "kf5-kparts"
  depends_on "kf5-kservice"
  depends_on "kf5-sonnet"
  depends_on "kf5-ktexteditor"
  depends_on "kf5-threadweaver"
  depends_on "kf5-kwindowsystem"
  depends_on "kf5-kdeclarative"
  depends_on "kf5-kxmlgui"

  def install
    args = std_cmake_args

    args << "-DCMAKE_CXX_FLAGS='-D_DARWIN_C_SOURCE'"

    system "cmake", ".", *args
    system "make", "install"
    prefix.install "install_manifest.txt"
  end
end
