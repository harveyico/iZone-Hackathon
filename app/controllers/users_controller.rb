class UsersController < ApplicationController
  
  before_filter :authenticate_user!,:except => [:applicant]
  inherit_resources

  def show
    @user = User.find params[:id]
    if @user.eql? current_user
      redirect_to profile_path
    end
    @gago = pull_facebook_data(@user)

  end

  def edit
  end

  def update
    update!(notice: 'User information successfully updated!') { redirect_to profile_path }
  end

  def show_profile
   @user = current_user 
  end

end
