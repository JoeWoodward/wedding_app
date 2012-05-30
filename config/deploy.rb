 # Change app_name to your app & server_ip to your server's ip

 require 'bundler/capistrano'

 # use this if using rbenv on server, capistrano uses a very basic interactive shell
 # that doesn't automatically include all paths
 # set :default_environment, {
 #  'PATH' => "/home/deploy/.rbenv/shims:/home/deploy/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:$PATH"
 # }

 set :application, "app_name"

 set :normalize_asset_timestamps, false

 role :web, "server_ip"

 role :app, "server_ip"

 role :db, "server_ip", :primary => true

 default_run_options[:pty] = true

 ssh_options[:forward_agent] = true

 set :deploy_to, "/home/deploy/apps/app_name"

 set :deploy_via, :remote_cache

 set :user, "deploy"

 set :use_sudo, false

 set :scm, :git

 set :scm_username, "deploy"

 set :repository, "ssh://deploy@server_ip/~/app_name.bare_repo.git/"

 set :branch, "deploy"

 set :git_enable_submodules, 1

# tasks
namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  desc "Symlink shared resources on each release - not used"
  task :symlink_shared, :roles => :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
end

before 'deploy:update' do
  system 'git push linode deploy'
end

after 'deploy:update_code', 'deploy:symlink_shared'
