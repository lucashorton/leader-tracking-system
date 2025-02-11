json.extract! emergency_contact, :id, :leader_id, :firstName, :middleName, :lastName, :phoneNumber, :streetAddress1, :streetAddress2, :city, :state, :zip, :country, :email, :created_at, :updated_at
json.url emergency_contact_url(emergency_contact, format: :json)
