class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def biggi
    render text: "hi mwaaaaa"
  end
end
