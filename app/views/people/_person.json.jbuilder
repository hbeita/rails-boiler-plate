json.extract! person, :id, :name, :last_name, :phone_number, :birthday, :address, :type, :created_at, :updated_at
json.url person_url(person, format: :json)
