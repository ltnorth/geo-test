# GEO Together Technical Test
Repository for the tech test for GEO Together.

## Running the test
This is a Sinatra app. The server is run using the ```rackup``` command and the tests are run using ```rspec test``` whilst the current working directory is at the root of this repository.

## Gems and Tools
I used the Sinatra and Rack gems the create the API and Nokogiri was used to parse and return the XML data. HTTParty was used to make requests to the API whilst the server is running and parses the responses to feed to the tests. I used RSpec to write and run the test files. It is particularly useful for executing unit tests and so it seemed fitting to use it for checking API responses.