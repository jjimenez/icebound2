class HomeController < ApplicationController
  before_filter :check_session!, :except => [:auth_failure]

  def check_session!
    redirect_to '/auth/google_oauth2' unless user_signed_in?
  end

  def carousel_group_count
    3
  end

  def index
    @grouped_markets = Market.where(["user_id =?", current_user ]).in_groups_of(carousel_group_count)
    @manuscripts = Manuscript.where(["user_id =?", current_user ]).page(params[:page] || 1)
  end

  def auth_failure
  end

end
