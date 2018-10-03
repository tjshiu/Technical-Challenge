# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'httparty'

response_json = JSON.parse(HTTParty.get("https://gist.githubusercontent.com/vvo/f3d59911e547bbea98e0ac8bd1b3bd89/raw/94c16679a367b562ed4ed255304c12f80649b570/z_data.json"))
response_json.each do |app|
    App.create(app)
end