require 'byebug'
class SessionsController < ApplicationController

    def new
        session
    end

    def create
        if params[:name] == nil || params[:name].empty?
            redirect_to '/'
        else
            session[:name] = params[:name]
            redirect_to '/welcome'
        end 
    end

    def destroy
        if session[:name]
            session.delete :name
        end
    end
end
  