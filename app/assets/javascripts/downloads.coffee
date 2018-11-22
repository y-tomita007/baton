$(document).on 'change', '#apply', ->
  if $(this).prop('checked')
    $('#download').removeClass('disabled')
  else
    $('#download').addClass('disabled')
