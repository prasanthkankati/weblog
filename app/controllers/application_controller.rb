# frozen_string_literal: true

class ApplicationController < ActionController::Base
  #   http_basic_authenticate_with name: 'dhh', password: 'secret', except: %i[index show]

  helper_method :current_user

  def index
    @articles = Article.all
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end
