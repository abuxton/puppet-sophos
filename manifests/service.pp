# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include sophos::service
class sophos::service (
  Boolean                   $enable_service         = true,
  Enum['stopped','running'] $ensure_agent           = 'running',
  Enum['stopped','running'] $ensure_servicemanager  = 'running',
  Enum['stopped','running'] $ensure_uiserver        = 'running',
){

  service { 'com.sophos.agent':
    ensure => $ensure_agent,
    enable => $enable_service,
  }
  service { 'com.sophos.common.servicemanager':
    ensure => $ensure_servicemanager,
    enable => $enable_service,
  }
  service { 'com.sophos.endpoint.uiserver':
    ensure => $ensure_uiserver,
    enable => $enable_service,
  }
}
