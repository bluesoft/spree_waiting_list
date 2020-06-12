Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_waiting_list'
  s.version     = '3.7.0'
  s.summary     = 'Add a waiting list to your spree store'
  s.description = 'The waiting list allows users to signup to be notified via email when an items comes back into stock'
  s.required_ruby_version = '>= 2.1.0'

  s.author            = 'Joshua Nussbaum'
  s.email             = 'joshnuss@gmail.com'
  s.homepage          = 'http://www.godynamo.com'

  s.files        = Dir['README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'db/**/*', 'config/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 3.1.0', '< 5.0'

  s.add_dependency 'haml'
  s.add_dependency 'spree_backend', spree_version
  s.add_dependency 'spree_core', spree_version

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot', '~> 4.7'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails', '~> 4.0.0.beta2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
