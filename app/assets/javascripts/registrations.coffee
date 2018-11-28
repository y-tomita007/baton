$(document).on 'change', '.expiration', ->
  expire_on = "#{$('#expire_year').val()}-#{$('#expire_month').val()}-01"
  $('#m_user_m_credits_attributes_0_expire_on').val(expire_on)
