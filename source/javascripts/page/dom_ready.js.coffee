$ ->
  # Slow scrolling to anchor
  $('[data-behavior=anchor-scroll]').on 'click', (event) ->
    event.preventDefault()
    targetAnchor = $("a[name='"+$(@).attr('href').substring(1)+"']")
    $('html,body').animate({scrollTop: targetAnchor.offset().top},'slow')
