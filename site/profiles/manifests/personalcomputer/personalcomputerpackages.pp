class profiles::personalcomputer::personalcomputerpackages {

  #packages that are installed via a puppet module

  #packages installed via installer
  $desiredpkgs = [ 'pwgen', 'dos2unix', 'curl', 'git', 'nmap', 'subversion', 'tree', 'wget', 'whois', 'at', 'cinnamon']
  package { $desiredpkgs: ensure => 'latest' }

  #packages removed via installer
  $undesiredpkgs = []
  package { $undesiredpkgs: ensure => 'absent' }

}
