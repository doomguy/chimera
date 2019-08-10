
def runCmd(request, fname)
  require "oj"
  request_json = Oj::dump request
  r = IO.popen({"REQUEST" => request_json}, "registry/"+fname+"/main", "r")
  return r
end

fname = File.basename(__FILE__,File.extname(__FILE__))

get '/'+fname do
  return runCmd(request, fname)
end

post '/'+fname do
  return runCmd(request, fname)
end
