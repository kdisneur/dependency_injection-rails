require 'dependency_injection_rails/railtie'

module DependencyInjectionRails
  mattr_accessor :services_path
  def self.services_path
    @@services_path ||= Rails.root.join('config', 'services.yml')
  end
end
