require 'serverspec'
require 'docker'

image = Docker::Image.build_from_dir('./')

set :backend, :docker
set :os, family: 'RedHat', arch: 'x86_64'
set :docker_image, image.id

