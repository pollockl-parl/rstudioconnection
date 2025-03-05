# constants
APPG_TEST_URL <-"https://publications.parliament.uk/pa/cm/cmallparty/241120/contents.htm"
# messages
ERROR_CRAWLER <- glue::glue(
  "The APPG register website blocks crawlers from off the Parliamentary Estate.
  Trying read_html_live - this is inherently more fragile than static parsing.
  "
  )
# include
usethis::use_data(
  APPG_TEST_URL,
  ERROR_CRAWLER,
  internal = TRUE,
  overwrite = TRUE
)
