$deps = [ "autoconf",
          "automake",
          "git",
          "gcc",
          "gdb",
          "kernel-devel",
          "kernel-headers",
          "openssl-devel",
          "libtool",
          "perl",
          "pkgconfig",
          "python",
          "python-simplejson",
          ]

package { $deps:
    ensure => "installed"
}

