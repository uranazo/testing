require 'bundler/capistrano'

server 'localhost', :web, :app, :db

set :application, 'testing'
set :user, 'vagrant'
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false
set :scm, "git"
set :repository, "git@github.com:uranazo/testing"

default_run_options[:pty] = true

ssh_options[:forward_agent] = true
ssh_options[:keys] = `vagrant ssh-config | grep IdentityFile`.split.last