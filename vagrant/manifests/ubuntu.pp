$deps = [ "autoconf",
          "automake",
          "git",
          "gcc",
          "gdb",
          "clang",
          "libssl-dev",
          "libtool",
          "linux-headers-$kernelrelease",
          "perl",
          "pkg-config",
          "python",
          "python-simplejson",
          ]

package { $deps:
    ensure => "installed"
}

