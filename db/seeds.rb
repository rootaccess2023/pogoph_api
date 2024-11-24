require 'csv'

csv_file_path = Rails.root.join('db', 'pogo.csv')

CSV.foreach(csv_file_path, headers: true) do |row|
years_data = {
    "2017" => row['is_2017'] == 'true',  # Convert the string "true" to actual boolean true
    "2018" => row['is_2018'] == 'true',
    "2019" => row['is_2019'] == 'true',
    "2020" => row['is_2020'] == 'true',
    "2021" => row['is_2021'] == 'true',
    "2022" => row['is_2022'] == 'true',
    "2023" => row['is_2023'] == 'true',
    "2024" => row['is_2024'] == 'true'
  }

  Location.create!(
    name: row['name'],
    latitude: row['latitude'].to_f,
    longitude: row['longitude'].to_f,
    image: row['img_url'],
    description: row['description'],
    address: row['address'],
    years: years_data
  )
end

puts "Locations generated successfully"
