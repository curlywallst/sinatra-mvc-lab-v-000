require_relative 'config/environment'
require_relative 'models/piglatinize.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @translated_text = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :results
  end


end
