Personal custom theme for [**myeda**](https://github.com/zatailm/myeda) project.
But you can try it (it is provided "as is", without warranty of any kind).

Install devtools if not already installed
```R
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
```
Install themezata from GitHub
```R
devtools::install_github("zatailm/themezata")
```
Some arguments
```R
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
```
