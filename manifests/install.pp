# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include sophos::install
class sophos::install (
  Optional[Stdlib::HTTPSUrl]      $installer_source,
  Optional[Stdlib::Absolutepath]  $installer_path     = '/tmp',
  String                          $installer_name     = 'SophosInstall.zip',
){
  archive { "${installer_path}/${installer_name}" :
    ensure        => present,
    source        => $installer_source,
    extract       => true,
    extract_path  => $installer_path,
    #extract_command => "/usr/bin/unzip ${installer_path}/${installer_name}",
    checksum_type => 'none', # typically unecessary
    cleanup       => false,  # keep the file on the server
    creates       => "${installer_path}/Sophos Installer Components",
  }
  file{[
    "${installer_path}/Sophos Installer.app/Contents/MacOS/Sophos Installer",
    "${installer_path}/Sophos Installer.app/Contents/MacOS/tools/com.sophos.bootstrap.helper"
    ]:
    mode        => '0777',
    subscribe   => Archive["${installer_path}/${installer_name}"],
    }
  exec { 'sophos install' :
    command     => "'${installer_path}/Sophos Installer.app/Contents/MacOS/Sophos Installer --install'",
    refreshonly => true,
    subscribe   => Archive["${installer_path}/${installer_name}"],
    group       => 'wheel',
  }

}
