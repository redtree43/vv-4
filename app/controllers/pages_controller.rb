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

end

