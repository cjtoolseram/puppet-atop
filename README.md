# atop

#### Table of Contents

1. [Description](#description)
2. [Easy Setup](#easy-setup)
3. [Advance Usage](#advance-usage)
4. [Parameters](#parameters)
5. [Development](#development)

## Description

Puppet Module to manage atop

## Easy Setup

Install atop with default configuration
```
include atop
```

##Advance Usage

Example usage if having custom configuration

```
class { 'atop':
  service_run    => true,
  service_enable => false,
  interval       => 120,
  logpath        => '/var/log/myatop/atop',
}
```

##Parameters
##### `service_run`
Ensure the service running or stopped. Accept `true` or `false`. Default: `true`

##### `service_enable`
Ensure the service enabled or disable. Accept `true` or `false`. Default: `true`

##### `interval`
Interval between snapshots. Default: `600`

##### `interval`
Path do snapshots logging. Default: `/var/log/atop`

##Development
Please help to expand this module across multiple linux distros.