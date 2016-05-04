json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname, :address1, :address2, :phone, :status, :rentedbookid
  json.url user_url(user, format: :json)
end
