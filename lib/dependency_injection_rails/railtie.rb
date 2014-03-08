require 'dependency_injection_rails/controllers/helpers'

module DependencyInjectionRails
  class Railtie < Rails::Railtie
    ActiveSupport.on_load(:action_controller) do
      include DependencyInjectionRails::Controllers::Helpers
    end
  end
end
