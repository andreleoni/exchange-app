class HomeController < ApplicationController
  def index
  end

  def exchange
  	render json: { 'value': currency_value }
  end

  private

  def currency_value
  	Currency.exchange(params[:currency], params[:current_destination], params[:quantity]).to_f
  end
end
