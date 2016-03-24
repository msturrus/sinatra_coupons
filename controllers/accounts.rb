class AccountsController < ApplicationController
  @account_message = ''
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
    @account_message = "Welcome to Stoneman Discountables, where you'll always find rock-bottom prices!"
    erb :account_create
  end

  post '/login' do
    @all_users = Account.all

    erb :account
  end

  get '/logout' do
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
    @account_message = 'These are all the accounts'

    erb :account
  end

  get '/delete' do
    erb :delete
    @account_message = 'Delete is a big step'
  end

  post '/deleteall' do
    @all_users = Account.all
    @all_users.destroy

    @account_message = 'You just deleted everything!  Why would you do that?'

    erb :delete
  end

end
