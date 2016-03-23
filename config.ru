require 'sinatra/base'

require './controllers/application'
require './controllers/accounts'
require './controllers/coupons'


require './models/account'
require './models/coupon'


map('/') { run ApplicationController }
map('/coupon') { run CouponsController }
map('/account') { run AccountsController }
