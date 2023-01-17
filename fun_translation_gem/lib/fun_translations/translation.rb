# frozen_string_literal: true

# top-level documentation comment for `module FunTranslations`
module FunTranslations
  class Translation
    attr_reader :original_text, :translated_text, :translation

    def initialize(raw_translation)
      @original_text = raw_translation['text']
      @translated_text = raw_translation['translated']
      @translation = raw_translation['translation']
    end
  end
end
