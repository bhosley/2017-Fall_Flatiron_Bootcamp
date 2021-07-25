require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Welcome to your app!!!! YOU DIDN'T BUILD THIS! \n Started this server with Shotgun!"
  end

end
