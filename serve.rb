# file: serve.rb
 
require 'rack'
 
server = Rack::Builder.new do
  run Rack::Directory.new(Dir.pwd)
end
 
Rack::Handler::WEBrick.run(server)