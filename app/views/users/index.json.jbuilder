json.array!(@users) do |user|
  json.extract! user, :id, :name, :phone, :photo, :email, :password_digest, :Locations_id
  json.url user_url(user, format: :json)
end
