# frozen_string_literal: true

require 'faraday'
require 'json'
require 'zeitwerk'
require 'fun_translations'

loader = Zeitwerk::Loader.for_gem
loader.setup

# top-level documentation comment for `module FunTranslations`
module FunTranslations
  def self.client
    FunTranslations::Client.new
  end
end

client = FunTranslations.client
result = client.translate :pirate, 'hello'
p result