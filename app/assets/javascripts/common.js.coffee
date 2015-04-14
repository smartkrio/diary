$ ->
  $('#notes_search').submit ->
    $.get @action, $(this).serialize(), null, 'script'
    false
  return