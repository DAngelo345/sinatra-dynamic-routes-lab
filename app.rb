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
    v = params[:number].to_i
    v_two = params[:phrase]
  #  binding.pry
  count = ""
   v.times do 
      count += v_two
   end
   count
  
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    v = params[:word1]
    v2 = params[:word2]
    v3 = params[:word3]
    v4 = params[:word4]
    v5 = params[:word5]
    b = " "
    c = "."
   v + b + v2 + b + v3+ b + v4 + b + v5 + c
  end

  get '/:operation/:number1/:number2' do 
    oper = params[:operation]
    num = params[:number1].to_i
    num2 = params[:number2].to_i
    # binding.pry
    if oper == "add"
      a = num + num2
      a.to_s
    elsif oper == "subtract"
      s = num - num2
      s.to_s
    elsif oper == "multiply"
      m = num * num2
      m.to_s
    else oper == "divide"
      d = num / num2
      d.to_s
    end
  end

end