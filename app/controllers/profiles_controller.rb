# frozen_string_literal: true

class ProfilesController < ApplicationController
  def show
    @user = current_user
  end
  
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    session[:return_url] ||= request.referer
    if @user.update(profile_params)
      redirect_to session.delete(:return_url), notice: 'OK!!!!!'
    else
      render :edit, alter: 'Wrong!!'
    end

  end

  private
    def profile_params
      params.require(:user).permit(:introduction, :job, :relationship, :domicile, :education)
    end
end
