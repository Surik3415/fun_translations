module FunTranslation
    class Client
        include FunTranslation:Connection
        def initialize  
        end
        
        #endpoint = :yoda, :pirate
        def translate(endpoint, text)
            FunTranslation:Translation.new(
            post ("/translate/#{endpoint}.json", { text: text }) # --> json
            )
        end
    end
end