node default{
  $packages= ['apache2','mysql-server']
  
  package{$packages:
    ensure => installed,
  }
}

---

node default{
  $packages= ['apache2','mysql-server']
  
  package{$packages:
    ensure => installed,
  }

  exec{'Conditions':
    command => '/bin/echo "Apache is installed" > /tmp/software.txt',
    onlyif  => '/bin/which apache2',
  }
  
}