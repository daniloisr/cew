#coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate
    if session[:user].nil?
      redirect_to login_path, :alert => "Você deve estar logado para visualizar essa página"
    end
  end
  
  def log
    if params[:controller] and params[:action]
      Log.create(:message =>
        "Usuário #{session[:user].name} #{t("log.#{params[:action]}")} #{t("log.#{params[:controller]}")}");
    end
  end
end
