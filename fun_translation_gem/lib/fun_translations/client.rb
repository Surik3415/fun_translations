# frozen_string_literal: true

# top-level documentation comment for `module FunTranslations`
module FunTranslations
    class Client
        include FunTranslation:Connection
        def initialize  
        end
        
        #endpoint = :yoda, :pirate
        def translate(endpoint, text)
            FunTranslations:Translation.new(
            post ("/translate/#{endpoint}.json", { text: text }) # --> json
            )
        end
    end
end
