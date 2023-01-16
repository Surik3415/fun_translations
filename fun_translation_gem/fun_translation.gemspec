require File.expand_path('lib/fun_translations/version', __dir__)

Gem::Specification.new do |spec|
  spec.name                  = 'fun_translations'
  spec.version               = FunTranslations::VERSION
  spec.authors               = ['Suren Avakian']
  spec.email                 = ['Surenavakian96@gmail.com']
  spec.summary               = ''
  spec.description           = ''
  spec.homepage              = 'https://github.com/surik3415/fun_translations'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7.0'

  spec.files = Dir['README.md', 'LICENSE',
                   'CHANGELOG.md', 'lib/**/*.rb',
                   'fun_translations.gemspec', '.github/*.md',
                   'Gemfile', 'Rakefile']
  spec.extra_rdoc_files = ['README.md']
  spec.require_paths    = ['lib']

  spec.add_dependency 'faraday', '~> 2.6'
  spec.add_dependency 'zeitwerk', '~> 2.4'

  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end
