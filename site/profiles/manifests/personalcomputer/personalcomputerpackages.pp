class profiles::personalcomputer::personalcomputerpackages {

  #packages that are installed via a puppet module

  #packages installed via installer
  $desiredpkgs = [ 'pwgen', 'dos2unix', 'curl', 'git']
  package { $desiredpkgs: ensure => 'latest' }

  #packages removed via installer
  $undesiredpkgs = []
  package { $undesiredpkgs: ensure => 'absent' }

}
