require 'active_exchange' if defined?(Rails) && Rails::VERSION::MAJOR == 3
require 'rails'

module ActiveExchange
  class Engine < Rails::Engine

  end
end
