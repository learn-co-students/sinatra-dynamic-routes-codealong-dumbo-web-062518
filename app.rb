require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:factor1/:factor2" do
    "#{params[:factor1].to_i * params[:factor2].to_i}"
  end

end
