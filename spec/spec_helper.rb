require 'serverspec'
require 'docker'
require 'open3'

set :backend, :docker
set :os, family: 'RedHat', arch: 'x86_64'
if ENV['DOCKER_CONTAINER']
  set :docker_container, ENV['DOCKER_CONTAINER']
end
