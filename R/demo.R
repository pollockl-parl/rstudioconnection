#' Test APPG availability
#'
#' @return A boolean indicating whether we can use static parsing
#' @export
#'
#' @examples
#'  result <- try_register()
try_register <- function() {
  tryCatch(
    {
      rvest::read_html(APPG_TEST_URL)
      return(TRUE)
    },
    error = function(e){
      message(ERROR_CRAWLER)
      print(e)
      return(FALSE)
    }
  )
}

get_appg_live <- function(urlin){
  content <- rvest::read_html_live(APPG_TEST_URL) |>
    rvest::html_element("div#content") |>
    rvest::html_element("div#mainTextBlock")
  return(content)
}

get_appg_static <- function(urlin) {
  content <- rvest::read_html(urlin)
  return(content)
}

get_appg_file <- function(filein) {

}

get_country_urls <- function(content) {
  countries <- content[[1]]
}
