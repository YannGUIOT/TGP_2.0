class WelcomeController < ApplicationController
    def welcome
        @welcome = params[:id]
    end
end