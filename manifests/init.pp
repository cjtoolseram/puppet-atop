# == Class: atop
#
# Allow to install and configure atop.
#
# === Parameters
#
# [*package_name*]
#   Package name, default to atop.
#
# [*service_name*]
#   Service name, default to atop.
#
# [*service_run*]
#   Ensure atop service running, default to false.
#
# [*service_enable*]
#   Enable atop service, default to false.
#
# [*interval*]
#   Interval between snapshots, default to 600.
#
# [*logpath*]
#   Directory were the log will be saved by the service.
#   Default is /var/log/atop.
class atop (
  $package_name = 'atop',
  $service_name = 'atop',
  $service_run = true,
  $service_enable = true,
  $interval = 600,
  $logpath = '/var/log/atop',
  $confpath = '/etc/sysconfig/atop',
) {

  include epel

  package { $package_name:
    ensure => 'installed',
    require => Class['epel'],
  }

  file { $confpath:
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => epp('atop/atop.epp'),
  }

  service { $service_name:
    ensure => $service_run,
    enable => $service_enable,
  }
}