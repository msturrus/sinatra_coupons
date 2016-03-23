class AccountsController < ApplicationController

  # get '/' do
  #   Account.all.to_json
  # end

  # get '/create' do
  #   Account.create({
  #     :name => 'Reggie',
  #     :email => 'reginald@bebop.cola',
  #     :password_hash => 'bebopcola'
  #     }).to_json
  # end

  get '/' do
    p 'This is the account login/register page'
    @account_message = "Welcome! Please register or login!"
    erb :account_create
  end

  post '/login' do
    @all_users = Account.all

    erb :account
  end

  get '/logout' do
    @account_message = "THANK YOU FOR VISITING US! PLZ COME BACK TYYYYY!"
    redirect '/'
  end

  post '/create' do


    @new_user = Account.create({
      :name => params[:name],
      :email => params[:email],
      :password_hash => params[:password].to_s.reverse
    })

    @new_user.save
    redirect '/'
  end

  get '/update' do
    erb :account_update
  end

  get '/all' do
    @all_users = Account.all
    erb :account
  end

end
