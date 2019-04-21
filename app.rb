require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number} squared = #{number.**2}."
  end

  get '/say/:number/:phrase' do
    for i in params[:number].to_i
      "#{params[:phrase]}\n"
    end
  end
end
