# coding: utf-8
class SessionController < ApplicationController
  def login
    redirect_to home_path unless session[:user].nil?

    if params[:email]
      u = User.where(:email => params[:email]).first

      if u.nil?
        flash[:alert] = 'Email não cadastrado no sistema'

      elsif u.pass != md5(params[:pass])
        flash[:alert] = 'Senha errada'

      else
        session[:user] = u
        redirect_to home_path
      end
    end
  end

  def logout
    session[:user] = nil
    redirect_to login_path
  end

  private
  def md5 v
    Digest::MD5.hexdigest v
  end
end
