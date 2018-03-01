class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ronaldo
    "brilha muito no corinhia"
  end
end
