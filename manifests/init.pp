# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include sophos
class sophos (
  Optional[Stdlib::HTTPSUrl]  $installer_source,
){
  class{'sophos::install':
    installer_source => $installer_source,
    }
  class{'sophos::service':
    require => Class['sophos::install'],
  }
}
