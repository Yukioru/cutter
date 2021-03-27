get "/api/createUrl" do |env|
  env.response.content_type = "application/json"
  url = env.params.query["url"]?
  if !url
    env.response.status_code = 400
    {code: 400, message: "url not provided"}.to_json
  else
    {code: 200, data: {url: url} }.to_json
  end
end
