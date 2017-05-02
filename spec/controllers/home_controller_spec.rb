require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response.status).to eql(200)
    end
  end

  describe 'POST #exchange' do
    before do
      json = JSON.parse(File.read('./spec/fixtures/currency_list.json'))
      @currency, @currency_destination = json['currency_list'].sample(2)
      @quantity = rand(1..1000)
    end

    it 'deve retornar sucesso na requisição http para a API' do
      post :exchange, params: { currency: @currency, currency_destination: @currency_destination, quantity: @quantity }
      expect(response).to have_http_status(200)
    end

    it 'deve retornar um valor numérico da API' do
      post :exchange, params: { currency: @currency, currency_destination: @currency_destination, quantity: @quantity }
      value = JSON.parse(response.body)['value']
      expect(value.is_a? Numeric).to eql(true)
    end
  end

end