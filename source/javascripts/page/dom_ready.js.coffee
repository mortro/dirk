$ ->
  # Slow scrolling to anchor
  $('[data-behavior=anchor-scroll]').on 'click', (event) ->
    event.preventDefault()
    targetAnchor = $("a[name='"+$(@).attr('href').substring(1)+"']")
    $('html,body').animate({scrollTop: targetAnchor.offset().top},'slow')


  unless $.cookie('hide_alert')
    $('[data-behavior=alert]').show()


  $('[data-behavior=alert-close]').on 'click', (event) ->
    event.preventDefault()
    $('[data-behavior=alert]').hide()
    $.cookie('hide_alert', true, { expires: 1, path: '/' })
