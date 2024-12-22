node default{
  $text= "My Nginx Package is installed successfully"  
  package{'nginx':
    ensure => installed,
  }
  file{'/tmp/status.txt':
    content => $text,
    mode    => '0644',
  }
}