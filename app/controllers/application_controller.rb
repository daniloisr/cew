#coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate
    if session[:user].nil?
      redirect_to login_path, :alert => "Você deve estar logado para visualizar essa página"
    end
  end
end
