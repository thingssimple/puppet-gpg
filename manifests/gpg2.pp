class gpg::gpg2 {
  include homebrew

  package { "gpg2":
    ensure => present
  }
}
