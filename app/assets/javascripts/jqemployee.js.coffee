
$ -> 
  delay = do ->
    timer = 0
    (callback, ms) ->
      clearTimeout timer
      timer = setTimeout(callback, ms)
      return

  $("#employees th a, #employees .pagination a").live "click", -> 
    $.getScript(this.href)
    return false
    
    
  $("#employees_search input").keyup -> 
    delay (->
      $.get($("#employees_search").attr("action"), $("#employees_search").serialize(), null, "script")
      return false
    ),300
   return 
    
  $("#employees_search input").keydown (event) -> 
    if event.keyCode in [48..57]
    else if event.keyCode in [65..90]
    else if event.keyCode in [96..105] 
    else if event.keyCode in [8,32,35,36,37,39,46,109,189]
    else
      event.preventDefault()
      
