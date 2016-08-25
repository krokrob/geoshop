class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  skip_after_action :verify_policy_scoped, only: [:index]

  def index
    @offers = Offer.last
    @hash = Gmaps4rails.build_markers(@offers) do |offer, marker|
      marker.lat offer.shop.latitude
      marker.lng offer.shop.longitude
    end
  end
end
