try_register <- function(urlin) {
  tryCatch(
    {
      return(rvest::read_html(urlin))
    },
    error = function(e){
      message(ERROR_CRAWLER)
      print(e)
    }
  )
}

get_appg_manual(htmlin) <- {
  tree <- rvest::read_html(htmlin)
  return(tree)
}
