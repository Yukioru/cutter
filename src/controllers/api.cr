post "/api/createUrl" do |env|
  env.response.content_type = "application/json"
  env.params.json["query"].as(String)
end
