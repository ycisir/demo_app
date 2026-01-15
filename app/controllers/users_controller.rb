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
end
