class HomeController < ApplicationController
  def index
  end

  def exchange
  	currency_value = Currency.exchange(params[:currency], params[:currency_destination], params[:quantity]).to_f
  	render json: { 'value': currency_value }
  end

  def novo_teste
    "asdadsa"
  end

  def velho_teste
    "zzzzz"
  end
  
  def velho_teste
    "zzzzz"
  end
end
