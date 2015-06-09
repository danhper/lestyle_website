#!/usr/bin/env puma

environment ENV['RACK_ENV'] || 'production'

directory '/home/lestyle/lestyle_website'

rackup      DefaultRackup

daemonize true

pidfile '/home/lestyle/lestyle_website/tmp/pids/puma.pid'

state_path '/home/lestyle/lestyle_website/tmp/pids/puma.state'

stdout_redirect '/home/lestyle/lestyle_website/log/puma.stdout', '/home/lestyle/lestyle_website/log/puma.err'

bind 'unix:///home/lestyle/lestyle_website/tmp/sockets/puma.sock'

on_worker_boot do
  ActiveRecord::Base.establish_connection
end
