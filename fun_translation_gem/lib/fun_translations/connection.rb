module FunTranslation
  module Connection
    BASE_URL = 'https://funtranslations.com'

    def connection
      Faraday.new(options) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.request :url_encoded
      end
    end

    def options
      headers = {
        accept: 'application/json',
        'Content-Type' => 'application/x-www-form-urlencoded',
        user_agent: "fun_translations gem/#{FunTranslation::VERSION}"
      }

      {
        headers: headers,
        url: BASE_URL
      }
    end
  end
end
