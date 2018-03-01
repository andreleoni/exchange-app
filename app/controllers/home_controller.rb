class HomeController < ApplicationController
  def index
  end

  def exchange
  	currency_value = Currency.exchange(params[:currency], params[:currency_destination], params[:quantity]).to_f
  	render json: { 'value': currency_value }
  end

  def new_test_method
  	render json: ""
  end
end
