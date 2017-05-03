$(document).ready ->
  $('#quantity').blur ->
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

  $('#quantity').keyup (event) ->
    if event.keyCode == 13
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

  $('.change-values-div').click () ->
    currency = $("#currency").val()
    currency_destination = $("#currency_destination").val()

    $("#currency").val(currency_destination)
    $("#currency_destination").val(currency)

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