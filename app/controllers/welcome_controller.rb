class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Mastermind Game API" }
      end
end
