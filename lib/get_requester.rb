require 'pry'
require 'open-uri'
require 'json'
require 'net/http'


class GetRequester

    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        url = self.url
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        data = JSON.parse(self.get_response_body)
        data.collect do |element|
            element
        end
    end

end