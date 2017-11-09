require 'sinatra'
require_relative './models/device.rb'
require_relative './controllers/devices_controller.rb'

use Rack::Reloader

use Rack::MethodOverride

run DevicesController