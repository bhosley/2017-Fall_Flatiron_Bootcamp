require 'sinatra/base'
require 'rack-flash'

class BadgesController < ApplicationController
    enable :sessions
    use Rack::Flash

    get '/badges' do
        @badges = Badges.all
        ebr :"/badges/index"
    end

    get '/badges/:id' do
        @badge = Badge.find_by(id: params[:id])
        @authority = Authority.find_by(id: params[@badge.authority_id])
        erb :'badges/show'
    end

    post '/badges/:id' do
        if logged_in?
            @user = current_user
            @badge = Badge.find_by(id: params[:id])
            if @user.badges.include?(@badge)
                flash[:message] = "You already have this one!" 
            else
                @user.badges << @badge
                redirect to '/users/show'
            end
        else
            redirect to "/login"
        end
    end

    delete '/badges/:id' do
        if logged_in?
            @badge = Badge.find_by_id(params[:id])
            if @user.badges.include?(@badge)
                @user.badges.delete(@badge)
                redirect to '/users/show'
            else
                flash[:message] = "You don't even have this one!" 
            end
        else
            redirect '/login' 
        end
    end 

end ##Class