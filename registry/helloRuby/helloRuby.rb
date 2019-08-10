def sayHello (request)
  name = request['name']
  if name == nil
    name = "World"
  end

  "Hello, "+name+"!\nThis is Ruby!"
end

fname = File.basename(__FILE__,File.extname(__FILE__))

get '/'+fname do
  sayHello(request)
end

post '/'+fname do
  sayHello(request)
end
