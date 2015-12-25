class gpg {
  include homebrew

  package { "gpg":
    ensure => present
  }
}
