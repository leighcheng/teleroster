
$ -> 
  $("#employees th a, #employees .pagination a").live "click", -> 
    $.getScript(this.href)
    return false
    
    
  $("#employees_search input").keyup -> 
    $.get($("#employees_search").attr("action"), $("#employees_search").serialize(), null, "script")
    return false


