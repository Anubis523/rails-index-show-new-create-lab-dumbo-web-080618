class CouponsController < ApplicationController
  def index 
    @coupons = Coupon.all
  end

  def new 
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create 
    # byebug
    @coupon = Coupon.create(coupon_code: params[:coupon][:code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end

end
