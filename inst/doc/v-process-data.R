## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse  = TRUE,
  comment   = "#>",
  message   = FALSE,
  warning   = FALSE
)
library(ggpop)
library(dplyr)

## ----basic--------------------------------------------------------------------
df_raw <- data.frame(
  sex = c("Female", "Male"),
  n   = c(55, 45)
)

df_plot <- process_data(
  data        = df_raw,
  group_var   = sex,
  sum_var     = n,
  sample_size = 20
)

head(df_plot, 4)

## ----facet--------------------------------------------------------------------
df_region_raw <- data.frame(
  region = c("North", "North", "South", "South"),
  sex    = c("Female", "Male", "Female", "Male"),
  n      = c(30, 20, 25, 25)
)

df_region <- process_data(
  data           = df_region_raw,
  group_var      = sex,
  sum_var        = n,
  sample_size    = 20,
  high_group_var = "region"
)

head(df_region, 4)

