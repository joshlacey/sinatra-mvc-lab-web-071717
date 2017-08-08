require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/user_input' do
    erb :user_input
  end

  post '/piglatinize'  do
    string = params[:user_phrase]
    piggy_string = PigLatinizer.new
    @string = piggy_string.to_pig_latin(string)
    erb :piglatinize
  end
end
