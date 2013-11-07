json.array!(@products) do |product|
  json.extract! product, :prod_title, :prod_sub_title, :prod_description, :prod_price, :prod_qty
  json.url product_url(product, format: :json)
end
