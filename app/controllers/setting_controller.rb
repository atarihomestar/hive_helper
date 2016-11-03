class SettingController < ApplicationController
  def edit
    @setting = Setting.first
  end

  def update
    @setting = Setting.first
    if @setting.update_attributes!(params[:setting].permit(:list_num))
      session[:list_num] = params[:setting][:list_num]
      redirect_to root_url
    end
  end

end
