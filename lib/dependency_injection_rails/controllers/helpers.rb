require 'dependency_injection/container'
require 'dependency_injection/loaders/yaml'

module DependencyInjectionRails
  module Controllers
    module Helpers
      def container
        @dependency_injection_container ||= create_dependency_injection_container
      end

      private

      def create_dependency_injection_container
        dependency_injection_container = ::DependencyInjection::Container.new
        populate_dependency_injection_container(dependency_injection_container)

        dependency_injection_container
      end

      def populate_dependency_injection_container(container)
        loader = ::DependencyInjection::Loaders::Yaml.new(container)
        loader.load(DependencyInjectionRails.services_path)
      end
    end
  end
end
