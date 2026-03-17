## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment  = "#>",
  message  = FALSE,
  warning  = FALSE
)
library(ggpop)

## ----search, eval = FALSE-----------------------------------------------------
# fa_icons(query = "person")
# fa_icons(query = "car")
# fa_icons(query = "heart")

## ----search-show--------------------------------------------------------------
head(fa_icons(query = "person"), 8)

