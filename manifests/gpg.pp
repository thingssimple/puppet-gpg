class gpg::gpg {
  include homebrew

  package { "gpg":
    ensure => present
  }
}
