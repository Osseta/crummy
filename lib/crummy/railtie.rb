require 'crummy'
require 'rails'

module Crummy
  class Railtie < Rails::Railtie
    initializer "crummy.action_controller" do |app|
      ActiveSupport.on_load :action_controller do
        require 'crummy/action_controller'
	include Crummy::ControllerMethods
      end
    end

    initializer "crummy.action_view" do |app|
      ActiveSupport.on_load :action_view do
        require 'crummy/action_view'
        include Crummy::ViewMethods
      end
    end
  end
end
