# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include sophos::service
class sophos::service {
  service { 'com.sophos.agent':
    ensure => 'stopped',
    enable => 'true',
  }
  service { 'com.sophos.common.servicemanager':
    ensure => 'running',
    enable => 'true',
  }
  service { 'com.sophos.endpoint.uiserver':
    ensure => 'stopped',
    enable => 'true',
  }
}
