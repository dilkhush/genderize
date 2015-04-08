require 'net/http'
require 'json'

BASE_URL = 'https://api.genderize.io?'
module Genderize
  def create_query names
    if names.class == Array
      query = []
      names.each_with_index {|name, index| query << "name[#{index}]=#{name}" }
      query.join('&')
    else
      "name=" << names
    end
  end

  def gender names
    uri = URI(BASE_URL << create_query(names))
    begin
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    rescue Exception => e
      {errors: e.message}
    end
  end
end
