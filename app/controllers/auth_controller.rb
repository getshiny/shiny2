class AuthController < ApplicationController

  def login
  end

  def code
    @user = User.find_or_create_by(phoneNumber: params[:phoneNumber])
    respond_to do |format|
      if @user.generateCode
        format.html { redirect_to auth_path(@user), notice: 'Code was successfully generated.' }
        format.json { render :show, status: :updated, location: auth_path(@user) }
      else
        format.html { auth_code_path }
        format.json { render json: @organisation.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

end
