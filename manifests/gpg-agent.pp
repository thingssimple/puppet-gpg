class gpg::gpg-agent {
  include homebrew

  package { "gpg-agent":
    ensure => present
  }

  $home = "/Users/${::boxen_user}"

  file_line { "Use gpg-agent":
    path => "${home}/.gnupg/gpg.conf",
    line => 'use-agent'
  }

  file_line { "Use gpg-agent daemon":
    path => "${home}/.zshrc",
    line => 'eval "$(gpg-agent --daemon)"'
  }

  file_line { "Export GPG_TTY":
    path => "${home}/.zshrc",
    line => 'export GPG_TTY=$(tty)'
  }
}
