class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  def index
    render plain: "Initialize new rails app"
  end
end
