get "/" do |env|
  renderer "index"
end

get "/admin" do |env|
  url = env.params.query["url"]?
  renderer "admin"
end
