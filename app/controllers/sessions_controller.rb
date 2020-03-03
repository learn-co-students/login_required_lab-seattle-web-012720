class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name] == nil || params[:name] == ""
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to welcome_path
        end
    end

    def welcome
    end

    def destroy
        if session.include? :name
            session.delete :name
        end
    end


end
