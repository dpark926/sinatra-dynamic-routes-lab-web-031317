require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params["number"]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    # i = 0
    # while i < @number
    #   "#{@phrase}"
    #   i += 1
    # end
    "#{@phrase}\n" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    # "#{@word1.class @word2.class @word3.class @word4.class @word5.class}"
    # "#{@word1.to_s @word2.to_s @word3.to_s @word4.to_s @word5.to_s.}"
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end
end
