require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    v = params[:name]
    v.reverse
  end

  get '/square/:number' do 
    v = params[:number].to_i
    
    new_v = v ** 2
    new_v.to_s
    
  end

  get '/say/:number/:phrase' do
    v = params[:number]
    v_two = params[:phrase]
   binding.pry
   v.times {puts "#{v_two}"}
  #  "#{v.times(v_two)} #{v_two}"

  end

end