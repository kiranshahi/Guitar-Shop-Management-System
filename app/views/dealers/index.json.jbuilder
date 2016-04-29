json.array!(@dealers) do |dealer|
  json.extract! dealer, :id, :dealer_name, :address, :email, :contact
  json.url dealer_url(dealer, format: :json)
end
