Personal custom theme for **myeda** project.
But you can install it.

Install devtools if not already installed
```R
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
```
Install themezata from GitHub
```R
devtools::install_github("username/themezata")
```
Example usage of themezata
```R
library(ggplot2)
library(theme_zata)

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  theme_zata()
```
Some arguments
```R
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
```
