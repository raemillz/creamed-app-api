class WelcomeController < ApplicationController
  def index
    format.html { render :index }
  end
end
