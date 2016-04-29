json.array!(@guitars) do |guitar|
  json.extract! guitar, :id, :guitar_name, :guitar_make, :guitar_model, :guitar_color, :purposed_selling_price, :damaged_status, :rack_no
  json.url guitar_url(guitar, format: :json)
end
