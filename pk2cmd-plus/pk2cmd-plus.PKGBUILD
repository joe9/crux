# Maintainer: BxS <bxsbxs at gmail dot com>

pkgname='pk2cmd-plus'
pkgver=1.21rc1_1.62.14
pkgrel=2
pkgdesc="PICkit 2 CLI software with updated DeviceFile and udev rules"
arch=('i686' 'x86_64')
url='http://www.microchip.com/pickit2'
license=('custom')
depends=('libusb-compat')
provides=('pk2cmd')
conflicts=('pk2cmd')
install=$pkgname.install
source=('http://ww1.microchip.com/downloads/en/DeviceDoc/PICkit2_PK2CMD_WIN32_SourceV1-21_RC1.zip'
        'http://ww1.microchip.com/downloads/en/DeviceDoc/PK2DFUpdate-1-62-14.zip'
        'pk2_devicefile_osfile_paths.patch'
        '60-pickit2.rules'
        'LICENSE')
md5sums=('6f93ede97be484ab7859626a9156a5d6'
         '58d5997952fd8f4057fe94659ac7c2bf'
         'c3972d96ac997eb35ae76a861eb4ae0c'
         'a5cf4ffff54af41c4d1cf8c97d007dcf'
         '6d53baa09ac4ac3907d503992349b17a')

build() {
  cd $srcdir/pk2cmd/pk2cmd
  patch -Np1 -i $srcdir/pk2_devicefile_osfile_paths.patch
  make linux
}

package() {
  install -Dm 755 $srcdir/pk2cmd/pk2cmd/pk2cmd $pkgdir/usr/bin/pk2cmd
  install -Dm 644 $srcdir/PK2DeviceFile.dat $pkgdir/usr/share/pk2/PK2DeviceFile.dat
  install -Dm 644 $srcdir/pk2cmd/release/PK2V023200.hex $pkgdir/usr/share/pk2/PK2V023200.hex
  install -Dm 644 $srcdir/60-pickit2.rules $pkgdir/etc/udev/rules.d/60-pickit2.rules
  install -Dm 644 $srcdir/LICENSE $pkgdir/usr/share/licenses/$pkgname/LICENSE
}
