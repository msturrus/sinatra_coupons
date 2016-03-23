class CouponsController < ApplicationController
  @account_message = ''

  get '/' do
    p 'This is the account login/register page'
    @account_message = "You can make whatever coupon you want!"
    erb :coupon_create
  end

  post '/create' do

    @new_coupon = Coupon.create({
      :title => params[:title],
      :description => params[:description],
      :discount_price => params[:discount_price],
      :expiration_date => params[:expiration_date]
    })

    @new_coupon.save
    redirect '/all'
  end

  get '/all' do
    @all_coupons = Coupon.all
    @account_message = 'These are all the coupons'
    erb :coupon
  end
end
