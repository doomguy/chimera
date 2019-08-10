require 'sinatra'

# load modules
Dir[ './registry/*' ].select{ |f| File.directory? f }.each{ |r| require r+"/"+r.split('/')[2]+".rb" }

get "/" do
  halt 418, "<h1>418 I'm a teapot!</h1>" 
end

