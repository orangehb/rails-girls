json.array!(@coments) do |coment|
  json.extract! coment, :id, :user_name, :body, :idea_id
  json.url coment_url(coment, format: :json)
end
