json.extract! contact, :id, :name, :mail, :mno, :desp, :created_at, :updated_at
json.url contact_url(contact, format: :json)
