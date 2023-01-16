module FunTranslation

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
            JSON.parse(raw_response.body)
        end
    end 
end