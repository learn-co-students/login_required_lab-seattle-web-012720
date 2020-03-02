class SessionsController < ApplicationController
    def new
    end

    def create
        if !params[:name]
            redirect_to '/login'
        elsif params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        session.delete :name
        redirect_to '/'
    end
end