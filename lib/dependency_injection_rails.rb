require 'rails'
require 'dependency_injection_rails/controllers/helpers'

module DependencyInjectionRails
  class Railtie < Rails::Railtie
    ActiveSupport.on_load(:action_controller) do
      include DependencyInjectionRails::Controllers::Helpers
    end
  end

  mattr_accessor :services_path
  def self.services_path
    @@services_path ||= Rails.root.join('config', 'services.yml')
  end
end
