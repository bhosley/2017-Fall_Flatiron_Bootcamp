require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Hello World"
  end

  get '/name' do
    "My name is Muffin-man."
  end

  get '/hometown' do
    "My hometown is Drury Lane."
  end

  get '/favorite-song' do
    "My favorite song is 'Do you know me?' by John Mayer"
  end

end
