json.extract! restaurant, :id, :restname, :restaddress, :restemail, :restnumber, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
