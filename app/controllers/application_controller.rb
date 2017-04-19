class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout 'gorg_engine/application'

  require GorgEngine::Engine.config.root + 'app' + 'controllers' + self.name.underscore

end
