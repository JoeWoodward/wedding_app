jQuery ->
  $('.field_with_errors').parent('.choice').addClass('choice-error')
  animateNewField = () ->
    $('.new-field').animate({height: $('.order-container').height() + 40, opacity: 1}, 500, () ->
     $(this).removeClass('new-field').addClass('active').removeAttr('style'))

  animateNewField()

  $('form').on 'click', 'span#destroy', (event) ->
    del = confirm('Are you sure you want to delete this person?')
    if del == true
      $(this).prev('input[type=hidden]').val('1')
      if $('fieldset.active').length < 2
        time = new Date().getTime()
        field = $('.add_fields')
        regexp = new RegExp($(field).data('id'), 'g')
        fieldset_regexp = new RegExp('<fieldset', 'g')
        new_field = $(this).closest('fieldset').before($(field).data('fields').replace(regexp, time).replace(fieldset_regexp, '<fieldset style="opacity:0; height: 0; display: block; margin: 0; padding: 0;"'))
        $('#orders-fields').height($('#orders-fields').height() + 20)
        $(this).closest('fieldset').animate({opacity: 0}, 500, () ->
          $(this).css({margin:0, padding: 0}).removeClass('active').hide( () ->
            $('.new-field').css('display', 'block').animate({opacity: 1, height: '100%'}, 500, () ->
              $(this).removeClass('new-field').addClass('active').removeAttr('style')
              $('#orders-fields').removeAttr('style'))))
      else
        $(this).closest('fieldset').animate({padding: '0 10px', height: 0, opacity: 0}, 500, () ->
          $(this).css({margin:0, padding: 0}).hide().removeClass('active'))
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $('#orders-fields').children('fieldset.active:last').after($(this).data('fields').replace(regexp, time))
    animateNewField()
    event.preventDefault()

  $('form').on 'click', '.choice', () ->
    $(this).find('input[type=radio]').attr('checked', true)
