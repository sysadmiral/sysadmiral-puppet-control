# This class will add desired repos as well as pulling in puppet modules that
# install repos e.g. perconarepo

class profiles::base::baserepos {
  if $facts['osfamily'] == 'Redhat' {
    class { '::epel': stage => 'setup' }
  }
}
