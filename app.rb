require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse

    # params[:name].reverse
  end

  get '/square/:number' do 
    @sqnum = params[:number].to_i ** 2
    "#{@sqnum}"

    # (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] 
    @number = params[:number].to_i
    (@phrase + " ") * @number

    # answer = ''
    # params[:number].to_i.times do
    #   answer += params[:phrase]
    # end
    # answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
      "#{@number1 - @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    when "divide"
      "#{@number1/@number2}"
    end

    # number1 = params[:number1].to_i
    # number2 = params[:number2].to_i
    # answer = 'Unable to perform this operation'
    # case params[:operation]
    # when 'add'
    #   answer = (number1 + number2).to_s
    # when 'subtract'
    #   answer = (number1 - number2).to_s
    # when 'multiply'
    #   answer = (number1 * number2).to_s
    # when 'divide'
    #   answer = (number1 / number2).to_s
    # end

  end

end