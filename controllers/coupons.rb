class CouponsController < ApplicationController
  get '/' do
    p 'This is the account login/register page'
    @account_message = "Welcome! Please register or login!"
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
    erb :coupon
  end
end
