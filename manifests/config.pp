
define shak-weather::config(
  $install_location,
  $dburl,
  $dbuser,
  $dbpassword,
  $forecastio){

  file { $install_location:
    owner  => root,
    group  => root,
    mode   => 644,
    ensure => directory
  }

  file { "${install_location}config.xml":
    owner   => root,
    group   => root,
    mode    => 644,
    content => template("shak-weather/config.xml.erb"),
  }
}
