json.extract! person, :id, :last_name, :first_name, :second_name, :birthday, :sex, :series, :number, :organization, :pass_date, :address, :created_at, :updated_at
json.url person_url(person, format: :json)