pal.zata <- c(
  '#3498db', '#0d0887', '#f1c40f', '#e74c3c', '#AD2A8E',
  '#00C19B', '#fba238', '#990000', '#4DAF4A', '#000000', '#999999'
)

pal.zata.grey <- c(
  '#FAFAFA', '#F5F5F5', '#EEEEEE', '#E0E0E0', '#BDBDBD',
  '#9E9E9E', '#757575', '#616161', '#424242', '#212121'
)

zcol <- c(
  '#E41A1C', '#377EB8', '#4DAF4A', '#FF7F00', '#AD2A8E', '#f1c40f',
  '#99445E', '#0d0887', '#616161', '#990000', '#bdbdbd'
)

my_cols <- c("#00AFBB", "#E7B800", "#FC4E07")

scale_fill_zata <- function(...) {
  discrete_scale('fill', 'classic', manual_pal(values = pal.zata), ...)
}

scale_color_zata <- function(...) {
  discrete_scale('color', 'classic', manual_pal(values = pal.zata), ...)
}

scalecolzt <- function(...) {
  discrete_scale('color', 'classic', manual_pal(values = zcol), ...)
}
scalefilzt <- function(...) {
  discrete_scale('fill', 'classic', manual_pal(values = zcol), ...)
}
