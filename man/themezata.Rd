\name{theme_zata}
\alias{theme_zata}
\title{Custom Theme for ggplot2: theme_zata}
\description{
  A custom theme for ggplot2 that provides a consistent and visually appealing style for plots.
}
\usage{
theme_zata(
  base_size = 9,
  base_family = '',
  line_size = 0.5,
  rect_size = base_size / 22,
  txt_scale = 1,
  border = TRUE,
  x_grid = TRUE,
  y_grid = TRUE,
  leg_pos = 'right',
  x_title = TRUE,
  y_title = TRUE,
  strip_bg = 'gray90',
  tit_pos = 'plot',
  cap_pos = 'plot',
  x_ticks = TRUE,
  y_ticks = TRUE,
  x_text = TRUE,
  y_text = TRUE,
  tit_jus = 'left',
  cap_jus = 'right',
  leg_loc = 'plot',
  x_text_angle = 'horizontal'
)
}
\arguments{
  \item{base_size}{The base font size. Default is 9.}
  \item{base_family}{The base font family. Default is empty.}
  \item{line_size}{The size of lines. Default is 0.5.}
  \item{rect_size}{The size of rectangles. Default is calculated based on base_size.}
  \item{txt_scale}{A scaling factor for text size. Default is 1.}
  \item{border}{Logical value indicating whether to display borders. Default is TRUE.}
  \item{x_grid}{Logical value indicating whether to display grid lines along the x-axis. Default is TRUE.}
  \item{y_grid}{Logical value indicating whether to display grid lines along the y-axis. Default is TRUE.}
  \item{leg_pos}{Position of the legend ('right', 'left', 'top', 'bottom', or 'none'). Default is 'right'.}
  \item{x_title}{Logical value indicating whether to display x-axis title. Default is TRUE.}
  \item{y_title}{Logical value indicating whether to display y-axis title. Default is TRUE.}
  \item{strip_bg}{Background color for strip labels. Default is 'gray90'.}
  \item{tit_pos}{Position of plot title ('plot' or 'panel'). Default is 'plot'.}
  \item{cap_pos}{Position of plot caption ('plot' or 'panel'). Default is 'plot'.}
  \item{x_ticks}{Logical value indicating whether to display x-axis ticks. Default is TRUE.}
  \item{y_ticks}{Logical value indicating whether to display y-axis ticks. Default is TRUE.}
  \item{x_text}{Logical value indicating whether to display x-axis text. Default is TRUE.}
  \item{y_text}{Logical value indicating whether to display y-axis text. Default is TRUE.}
  \item{tit_jus}{Justification of plot title ('left', 'center', or 'right'). Default is 'left'.}
  \item{cap_jus}{Justification of plot caption ('left', 'center', or 'right'). Default is 'right'.}
  \item{leg_loc}{Location of the legend ('plot' or 'none'). Default is 'plot'.}
  \item{x_text_angle}{Angle of x-axis text ('horizontal' or 'vertical'). Default is 'horizontal'.}
}
\details{
  The theme_zata function creates a custom theme for ggplot2 plots. It allows users to customize various aspects of the plot including fonts, line sizes, grid lines, legend position, axis titles, strip labels, plot title, plot caption, tick marks, and axis text.
}
\examples{
# Load ggplot2 library
library(ggplot2)

# Create sample data
data <- data.frame(
  category = rep(letters[1:3], each = 4),
  x = rep(1:4, 3),
  y = c(3, 4, 2, 5, 2, 3, 6, 4, 5, 2, 3, 4)
)

# Create a plot using theme_zata
ggplot(data, aes(x = x, y = y, fill = category)) +
  geom_col(position = "dodge") +
  theme_zata()
}
