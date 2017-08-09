# Introduction

Hazy is a simple client library for interacting with OpenStack clouds. Modelled on [Shade](https://github.com/openstack-infra/shade), Hazy aims to be the go-to library for Ruby applications seeking to integrate with OpenStack.

## Features

* Builds on the [Misty](https://github.com/flystack/misty) library for its speed, efficiency, and minimal dependency footprint.
* clouds.yaml support
* Ruby ORM for all configurable OpenStack entities
* A clean, principle-of-least-surprise interface:

```ruby
require "hazy"

# Initialize cloud
cloud = Hazy::Cloud.new(known_cloud: 'my-openstack')

# Upload an image to the cloud
image = cloud.create_image('ubuntu-trusty', filename: 'ubuntu-trusty.qcow2', wait: true)

# Find a flavor with at least 512M of RAM
flavor = cloud.get_flavor_by_ram(512)

# Boot a server, wait for it to boot, and then do whatever is needed
# to get a public ip for it.
cloud.create_server('my-server', image: image, flavor: flavor, wait: true, auto_ip: true)
```
