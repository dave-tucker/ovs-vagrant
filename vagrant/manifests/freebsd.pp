$deps = [ "automake",
          "libtool-base",
          "gmake",
          "python27",
          "py27-xml",
          "pkg_alternatives",
          ]

package { $deps:
    ensure => "installed"
}

