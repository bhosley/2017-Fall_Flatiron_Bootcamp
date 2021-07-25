class AuthoritiesController < ApplicationController

    get '/authorities' do
        @authorities = Authority.all
        erb :'/authorities/index'
    end

    get '/authorities/:id' do
        @authority = Authority.find_by(id: params[:id])
        @badges = @authority.badges
        erb :'/authorities/show'
    end

end