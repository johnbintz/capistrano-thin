Capistrano::Configuration.instance.load do
  set(:thin_command) { 'bundle exec thin' }
  set(:thin_config_file) { 'thin.yml' }
  set(:thin_config) { "-C #{thin_config_file}" }

  namespace :deploy do
    task :start do
      run "cd #{current_path} && #{thin_command} #{thin_config} start"
    end

    task :stop do
      run "cd #{current_path} && #{thin_command} #{thin_config} stop"
    end

    task :restart do
      top.deploy.stop
      top.deploy.start
    end
  end
end

