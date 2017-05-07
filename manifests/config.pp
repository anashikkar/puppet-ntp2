class ntp::config(
  String $config_name = $ntp::config_name,
  String $config_file_mode = $ntp::config_file_mode,
  Array[String] $server = $ntp::servers,

){
   file {"/etc/${config_name}":
     ensure => file,
     owner => 0,
     group => 0,
     mode => $config_file_mode,
     contents => templates("$module_name/ntp.conf.erb")
   
   }
}
