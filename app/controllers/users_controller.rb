class UsersController < ApplicationController
  def list_users
    @users = User.all
  end

  def show_new_template

  end

  def display_other_template
    #render 'common_templates/new_template'
    #render plain: "We use mostly plain for debugging"
    #render plain: params.inspect
    #render action: :list_users
    #render html: "<h1>Rendering HTML</h1>".html_safe
    redirect_to action: :list_users
  end

  def new_user
    @user = User.new
    #render 'new_user_form_tag'
  end

  def create_user
    #render plain: params
    @user = User.new(user_params)
    @user.name = @user.fullname #just blunt way better way to do is callback later will do
    if @user.save
      redirect_to action: :list_users
    else
      render action: :new_user
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :city, :gender)
  end
end
