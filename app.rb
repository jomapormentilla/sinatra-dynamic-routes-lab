require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].split("").reverse.join("")

    "#{ @name }"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    result = @number * @number
    
    "#{ result }"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    str = params[:phrase].gsub("%20"," ")

    result = []
    num.times do
      result << str
    end


    "#{ result.join(" ") }"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{ params[:word1] } #{ params[:word2] } #{ params[:word3] } #{ params[:word4] } #{ params[:word5] }."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      result = params[:number1].to_i + params[:number2].to_i
    when 'subtract'
      result = params[:number1].to_i - params[:number2].to_i
    when 'multiply'
      result = params[:number1].to_i * params[:number2].to_i
    when 'divide'
      result = params[:number1].to_i / params[:number2].to_i
    end

    "#{ result }"
  end
end