$ ->
  # Slow scrolling to anchor
  $('[data-behavior=anchor-scroll]').on 'click', (event) ->
    event.preventDefault()
    targetName = $(@).attr('href').substring(1)
    targetAnchor = $("a[name='"+targetName+"']")
    if targetName == 'top'
      $('html,body').animate({scrollTop: 0},'slow')
    else
      $('html,body').animate({scrollTop: targetAnchor.offset().top},'slow')


  unless $.cookie('hide_alert')
    $('[data-behavior=alert]').show()


  $('[data-behavior=alert-close]').on 'click', (event) ->
    event.preventDefault()
    $('[data-behavior=alert]').hide()
    $.cookie('hide_alert', true, { expires: 1, path: '/' })
