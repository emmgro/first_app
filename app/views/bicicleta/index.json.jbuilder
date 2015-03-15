json.array!(@bicicleta) do |bicicletum|
  json.extract! bicicletum, :id, :marca, :precio, :descripcion
  json.url bicicletum_url(bicicletum, format: :json)
end
