## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse   = TRUE,
  comment    = "#>",
  dpi = 150,
  fig.asp = .8,
  fig.width = 6,
  fig.height = 5,
  out.width = "70%",
  fig.align = "center",
  message    = FALSE,
  warning    = FALSE
)
library(ggpop)
library(ggplot2)

## ----shared-data, include = FALSE---------------------------------------------
df_t <- data.frame(
  grp  = rep(c("A", "B"), each = 10),
  icon = rep(c("circle", "square"), each = 10)
)

## ----theme-pop----------------------------------------------------------------
ggplot() +
  geom_pop(data = df_t, aes(icon = icon, color = grp), size = 2, dpi = 72) +
  scale_color_manual(values = c(A = "#1E88E5", B = "#E53935")) +
  theme_pop() +
  labs(title = "theme_pop()", color = NULL)

## ----theme-pop-dark-----------------------------------------------------------
ggplot() +
  geom_pop(data = df_t, aes(icon = icon, color = grp), size = 2, dpi = 72) +
  scale_color_manual(values = c(A = "#64B5F6", B = "#EF9A9A")) +
  theme_pop_dark() +
  labs(title = "theme_pop_dark()", color = NULL)

## ----theme-pop-minimal--------------------------------------------------------
ggplot() +
  geom_pop(data = df_t, aes(icon = icon, color = grp), size = 2, dpi = 72) +
  scale_color_manual(values = c(A = "#1E88E5", B = "#E53935")) +
  theme_pop_minimal()

