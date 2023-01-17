# frozen_string_literal: true

# top-level documentation comment for `module FunTranslations`
module FunTranslations

    # top-level documentation comment for `module FunTranslations`
    module Request
        include FunTranslation::Connection
        def post(path, params = {})
            # path --> translate/yoda.json
            # params --> { text: 'Hello, my_padawan'}
            respond_with (
            connection.post (path, params) # --> json
            ) 
        end
        def respond_with (raw_response)
            body = raw_response.body.empty? ?
                   raw_response.body : 
                   JSON.parse(raw_response.body)
            body['contents']
        end
    end 
end
