require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    v = params[:name]
    v.reverse
  end

  get '/square/:number' do 
    v = params[:number]
  
    v ** 2
    resp.status = 200
    resp.finish
  end

end