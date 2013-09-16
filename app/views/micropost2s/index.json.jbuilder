json.array!(@micropost2s) do |micropost2|
  json.extract! micropost2, :content, :user_id
  json.url micropost2_url(micropost2, format: :json)
end