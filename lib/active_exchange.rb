require 'active_exchange' if defined?(Rails) && Rails::VERSION::MAJOR == 3
require 'rails'

module ActiveExchange
  class Engine < Rails::Engine
    # engine_name :active_exchange
  end
end
