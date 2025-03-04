# constants
APPG_TEST_URL <-"https://publications.parliament.uk/pa/cm/cmallparty/241120/contents.htm"
# messages
ERROR_CRAWLER <- glue::glue(
  "The APPG register website blocks crawlers from off the Parliamentary Estate.
  Download the HTML of the page manually and feed that to get_appg_manual().
  Enter ?get_appg_manual() for details.
  "
  )
# include
usethis::use_data(
  APPG_TEST_URL,
  ERROR_CRAWLER,
  internal = TRUE,
  overwrite = TRUE
)
