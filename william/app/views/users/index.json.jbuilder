json.array!(@users) do |user|
  json.extract! user, :nickname
  json.url user_url(user, format: :json)
end
