flat_urls = [
  'https://images.unsplash.com/photo-1529408632839-a54952c491e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  'https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1353&q=80',
  'https://images.unsplash.com/photo-1536376072261-38c75010e6c9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
  'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
]
i = 0
Flat.all.each do |flat|
  flat.picture_url = flat_urls[i]
  flat.save!
  i += 1
end
# Flat.create!(
#   name: 'Light & Spacious Garden Flat London',
#   address: '10 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this light and spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 75,
#   number_of_guests: 3
# )
# Flat.create!(
#   name: 'Light Garden Flat London',
#   address: '11 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this light garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 80,
#   number_of_guests: 4
# )
# Flat.create!(
#   name: 'Spacious Garden Flat London',
#   address: '12 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 90,
#   number_of_guests: 5
# )
# Flat.create!(
#   name: 'Garden Flat London',
#   address: '13 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 95,
#   number_of_guests: 6
# )
