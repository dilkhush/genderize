require 'net/http'
require 'json'

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
    base_url = 'https://api.genderize.io?'
    uri = URI(base_url + create_query(names))
    begin
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    rescue Exception => e
      {errors: e.message}
    end
  end
end
