json.array!(@addresses) do |address|
  json.extract! address, :address, :address_1, :city, :zip
  json.url address_url(address, format: :json)
end
