$(document).ready ->
  $('#quantity').blur ->
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
    
    success: (data, text, jqXHR) ->      
      $('#result').val(data.value)
    
    return false

  $('#quantity').keyup (event) ->
    if event.keyCode == 13
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
      
      success: (data, text, jqXHR) ->      
        $('#result').val(data.value)
      
      return false

  $('.change-values-icon').click () ->
    currency = $("#currency").val()
    currency_destination = $("#currency_destination").val()

    $("#currency").val(currency_destination)
    $("#currency_destination").val(currency)