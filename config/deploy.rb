require "rvm/capistrano"
require "bundler/capistrano"
require './config/boot'
require 'airbrake/capistrano'

load "deploy/assets"

# GENERAL
set :user, "USER"
set :runner, "USER"
set :use_sudo, false
set :password, "PASSWORD"
set :domain, "DOMAIN"
set :application, "APPLICATION NAME"
set :repository,  "GIT URL"
set :application_dir, "/home/#{user}/rails_apps/#{application}/production"

# ROLES
role :web, domain                   # Your HTTP server, Apache/etc
role :app, domain                   # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

# GIT
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :keep_releases, 3
set :deploy_to, application_dir
set :deploy_via, :export

# SSH
default_run_options[:pty] = true
ssh_options[:paranoid] = true # comment out if it gives you trouble. newest net/ssh needs this set.

######## Callbacks - No More Config ########
after "deploy:restart", "deploy:cleanup"
after "deploy:update_code", "deploy:migrate"

# Custom Tasks
namespace :deploy do
  task :start do ; end
  task :stop do ; end

  desc "Restart Application"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
