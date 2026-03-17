## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse   = TRUE,
  comment    = "#>",
  dpi = 150,
  fig.asp = .9,
  fig.width = 6,
  fig.height = 5,
  out.width = "70%",
  fig.align = "center",
  message    = FALSE,
  warning    = FALSE
)
library(ggpop)
library(ggplot2)
library(dplyr)

## ----quick--------------------------------------------------------------------
df_raw <- data.frame(
  sex = c("Female", "Male"),
  n   = c(55, 45)
)

df_plot <- process_data(
  data        = df_raw,
  group_var   = sex,
  sum_var     = n,
  sample_size = 40
) %>%
  mutate(icon = case_when(
    type == "Female" ~ "person-dress",
    type == "Male"   ~ "person"
  ))

ggplot() +
  geom_pop(
    data = df_plot,
    aes(icon = icon, color = type),
    size = 2.5, dpi = 72
  ) +
  scale_color_manual(values = c(Female = "#C0392B", Male = "#2980B9")) +
  theme_pop() +
  scale_legend_icon(size = 5) +
  labs(title = "Population by sex", color = NULL)

