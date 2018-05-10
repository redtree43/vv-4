class PagesController < ApplicationController
  def landing
    # if user_signed_in?
    #   redirect_to controller: 'profiles', action: 'show'
    # end

    @firstsix = Product.all.order(created_at: :desc).limit(6)
  end

  def about
  end

  def contact

  end

  def contact_email
    user_info = {
      user: current_user,
      name: email_params[:name],
      message: email_params[:message]
      }
    ContactMailer.send_contact_email(user_info).deliver_now
    # render :contact
    redirect_to landing_path, notice: "Email has been sent!"
  end 

  private 
  def email_params
    params.require(:contact).permit(:name, :message)
  end

end

