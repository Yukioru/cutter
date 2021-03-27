get "/admin" do |env|
  env.response.content_type = "application/json"
  query = env.params.json["query"].as(String)
  renderer "admin"
end
