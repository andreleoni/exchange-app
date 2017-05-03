$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/exchange'
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
