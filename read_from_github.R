u <- "https://raw.github.azc.ext.hp.com/matthias-kaeding/api_test2/main/test.R?token=GHSAT0AAAAAAAABLV42GJ4XBIWS36YHQHIGY3BFP7Q"
devtools::source_url(u)

u = "https://raw.github.azc.ext.hp.com/matthias-kaeding/api_test2/main/test.R?token=GHSAT0AAAAAAAABMBJI6OJEWUEMCYDLVKESY3BH4RQ"
source_github <- function(u) {
  # load package
  #require(RCurl)
  # read script lines from website
  script <- RCurl::getURL(u, ssl.verifypeer = FALSE)
  # parase lines and evaluate in the global environment
  eval(parse(text = script), envir = .GlobalEnv)
}
source_github(u)
