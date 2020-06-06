json.extract! user, :id, :uid, :f_name, :l_name, :gender, :age, :address, :pincode, :city, :state, :created_at, :updated_at
json.url user_url(user, format: :json)
