module CodyRobbins
  module HttpError
    class Railtie < Rails::Railtie
      initializer('cody_robbins.http_error') do
        ActiveSupport.on_load(:action_controller) do
          ApplicationController.send(:include, HttpError)
        end
      end
    end
  end
end
