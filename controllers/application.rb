# Profesional-tier app.rb for professional-tier cat spinners

class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'sinatra_coupon'
  )

  set :public_folder, File.expand_path('../../public', __FILE__)
  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)

  get '/' do
    @account_message = "Welcome to Stoneman Discountables, where you'll always find rock-bottom prices!"
    erb :account_create
  end

  not_found do
    erb :notfound
  end

end
