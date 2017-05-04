$(document).ready ->
  $('#quantity').blur ->
    ExchangeApp.exchange_call()

  $('#quantity').keyup (event) ->
    if event.keyCode == 13
      ExchangeApp.exchange_call()

  $('.change-values-div').click () ->
    currency = $("#currency").val()
    currency_destination = $("#currency_destination").val()

    $("#currency").val(currency_destination)
    $("#currency_destination").val(currency)

    ExchangeApp.exchange_call()

  $('#currency, #currency_destination').change () ->
    ExchangeApp.exchange_call()

this.ExchangeApp =
  exchange_call: ->
    $('.refresh-icon').fadeIn('fast')
    
    $.ajax '/exchange',
    type: 'POST'
    dataType: 'json'
    data: {
            currency: $("#currency").val(),
            currency_destination: $("#currency_destination").val(),
            quantity: $("#quantity").val()
          }

    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
      $('.refresh-icon').fadeOut('slow')

    success: (data, text, jqXHR) ->
      $('#result').val(data.value)
      $('.refresh-icon').fadeOut('slow')

    return false
