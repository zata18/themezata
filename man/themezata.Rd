\name{theme_zata}
\alias{theme_zata}
\title{Personal Custom Theme for ggplot2 Plots (not meant for public use at this time)}
\usage{
theme_zata(
  base_size = 9,
  base_family = "",
  line_size = 0.5,
  rect_size = base_size / 22,
  txt_scale = 1,
  border = TRUE,
  x_grid = TRUE,
  y_grid = TRUE,
  leg_pos = "right",
  leg_jus = "center",
  x_title = TRUE,
  y_title = TRUE,
  strip_bg = "gray90",
  tit_pos = "plot",
  cap_pos = "plot",
  x_ticks = TRUE,
  y_ticks = TRUE,
  x_text = TRUE,
  y_text = TRUE,
  tit_jus = "left",
  cap_jus = "right",
  leg_loc = "plot",
  x_text_angle = "horizontal"
)
}
\description{
Custom theme for ggplot2 plots with various customizable parameters.
}
\arguments{
  \item{base_size}{The base font size for text elements.}
  \item{base_family}{The base font family for text elements.}
  \item{line_size}{The width of lines in the plot.}
  \item{rect_size}{The size of rectangles in the plot.}
  \item{txt_scale}{Scaling factor for text elements.}
  \item{border}{Logical indicating whether to include borders in the plot.}
  \item{x_grid}{Logical indicating whether to include grid lines along the x-axis.}
  \item{y_grid}{Logical indicating whether to include grid lines along the y-axis.}
  \item{leg_pos}{Position of the legend (e.g., "right", "top").}
  \item{leg_jus}{Justification of the legend (e.g., "center", "left").}
  \item{x_title}{Logical indicating whether to include x-axis title.}
  \item{y_title}{Logical indicating whether to include y-axis title.}
  \item{strip_bg}{Background color for strip labels.}
  \item{tit_pos}{Position of the plot title (e.g., "plot", "panel").}
  \item{cap_pos}{Position of the plot caption (e.g., "plot", "panel").}
  \item{x_ticks}{Logical indicating whether to include ticks along the x-axis.}
  \item{y_ticks}{Logical indicating whether to include ticks along the y-axis.}
  \item{x_text}{Logical indicating whether to include text along the x-axis.}
  \item{y_text}{Logical indicating whether to include text along the y-axis.}
  \item{tit_jus}{Justification of the plot title (e.g., "left", "right").}
  \item{cap_jus}{Justification of the plot caption (e.g., "left", "right").}
  \item{leg_loc}{Location of the legend (e.g., "plot", "panel").}
  \item{x_text_angle}{Angle of the x-axis text (e.g., "horizontal", "vertical").}
}
\value{
A ggplot2 theme object.
}
\examples{
library(ggplot2)

# Apply the custom theme to a ggplot object
p <- ggplot(mtcars, aes(x = mpg, y = disp)) +
  geom_point() +
  theme_zata()

print(p)
}
