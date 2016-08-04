class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  skip_after_action :verify_policy_scoped, only: [:index]

  def index
    @offers = Offer.all
  end

end
