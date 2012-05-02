require 'sinatra'
require 'yard'
require 'json'
require './config.rb'

use YARD::Server::RackMiddleware, :libraries => $libraries, :options => $options, :server_options => $server_options

post '/reload' do
  push = JSON.parse(params[:payload])
  "I got some JSON: #{push.inspect}"
  system "cd #{$repo_path}/; git pull; yard doc;"
end
