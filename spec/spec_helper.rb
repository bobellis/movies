require('rspec')
require('actor')
require('movie')
require('pry')
require('pg')

DB = PG.connect({:dbname => 'cinema_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM actors *;")
    DB.exec("DELETE FROM movies *;")
  end
end
