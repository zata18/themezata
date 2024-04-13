library(ggplot2)
#' themezata
#'
#' @param base.size
#' @param base.fam
#' @param line.size
#' @param rect.size
#' @param scale
#' @param border
#' @param grid.x
#' @param grid.y
#' @param leg.pos
#' @param leg.jus
#' @param title.x
#' @param title.y
#' @param strip.bg
#' @param title.pos
#' @param cap.pos
#' @param ticks.x
#' @param ticks.y
#' @param text.x
#' @param text.y
#' @param title.jus
#' @param cap.jus
#' @param leg.loc
#' @param text.x.dir
#'
#' @return
#' @export
#'
#' @examples
theme_zata <- function(base.size  = 9,
                       base.fam   = '',
                       line.size  = .5,
                       rect.size  = base.size / 22,
                       scale      = 1,
                       border     = '',
                       grid.x     = '',
                       grid.y     = '',
                       leg.pos    = 'right',
                       leg.jus    = 'center',
                       title.x    = '',
                       title.y    = '',
                       strip.bg   = 'gray90',
                       title.pos  = 'plot',
                       cap.pos    = 'plot',
                       ticks.x    = '',
                       ticks.y    = '',
                       text.x     = '',
                       text.y     = '',
                       title.jus  = 'left',
                       cap.jus    = 'right',
                       leg.loc    = 'plot',
                       text.x.dir = 'horizontal',
                       void       = FALSE
) {

  tiny  = scale * (11/14)
  small = scale * (12/14)
  large = scale * (14/14)
  unitval  = base.size / 18

  line.half  <- base.size / 2
  smallval <- small * base.size

  if (!is.null(border)) {
    border.panel <- element_rect(color = 'black', fill = NA)
  } else {
    border.panel <- element_blank()
  }

  if (!is.null(grid.x)) {
    grid.x <- element_line(linewidth = rel(.5), linetype = 'dashed', color = 'gray90')
  } else {
    grid.x <- element_blank()
  }

  if (!is.null(grid.y)) {
    grid.y <- element_line(linewidth = rel(.5), linetype = 'dashed', color = 'gray90')
  } else {
    grid.y <- element_blank()
  }

  if (title.jus == 'left') {
    title.jus = 0
  } else if (title.jus == 'right') {
    title.jus = 1
  } else if (title.jus == 'center') {
    title.jus = .5
  } else {
    title.jus = 0
  }

  if (cap.jus == 'left') {
    cap.jus = 0
  } else if (cap.jus == 'right') {
    cap.jus = 1
  } else if (cap.jus == 'center') {
    cap.jus = .5
  } else {
    cap.jus = 1
  }

  if (!is.null(title.x)) {
    title.x <- element_text(margin = margin(t = line.half / 2), vjust = 1)
  } else {
    title.x <- element_blank()
  }

  if (!is.null(title.y)) {
    title.y <- element_text(angle = 90, margin = margin(r = line.half / 2), vjust = 1)
  } else {
    title.y <- element_blank()
  }

  if (!is.null(ticks.x)) {
    ticks.x <- element_line(color = 'black')
  } else {
    ticks.x <- element_blank()
  }

  if (!is.null(ticks.y)) {
    ticks.y <- element_line(color = 'black')
  } else {
    ticks.y <- element_blank()
  }

  if (!is.null(text.x)) {
    if (text.x.dir == 'vertical') {
      text.x <- element_text(angle = 90, hjust = 1, vjust = .4)
    } else {
      text.x <- element_text(margin = margin(t = smallval / 4), vjust = 1)
    }
  } else {
    text.x <- element_blank()
  }

  if (!is.null(text.y)) {
    text.y <- element_text(margin = margin(r = smallval / 4), hjust = 1)
  } else {
    text.y <- element_blank()
  }

  if (void) {
    border.panel <- element_blank()
    grid.x  <- element_blank()
    grid.y  <- element_blank()
    title.x <- element_blank()
    title.y <- element_blank()
    ticks.x <- element_blank()
    ticks.y <- element_blank()
    text.x  <- element_blank()
    text.y  <- element_blank()
  }

  theme(
    line                = element_line(color = 'black', linewidth = line.size,linetype = 1, lineend = 'butt'),
    rect                = element_rect(fill = 'white', color = 'black', linewidth = line.size, linetype = 1),
    text                = element_text(family = base.fam, face = 'plain', color = 'black', size = base.size,
                                       lineheight = .9, hjust = .5, vjust = .5, angle = 0,
                                       margin = margin(), debug = FALSE),

    axis.line           = element_blank(),
    axis.line.x         = NULL,
    axis.line.y         = NULL,
    axis.text           = element_text(size = smallval, color = 'black'),
    axis.text.x         = text.x,
    axis.text.x.top     = element_text(margin = margin(b = smallval / 4), vjust = 0),
    axis.text.y         = text.y,
    axis.text.y.right   = element_text(margin = margin(l = smallval / 4), hjust = 0),
    axis.text.r         = element_text(margin = margin(l = .8 * line.half/ 2, r = .8 * line.half / 2), hjust = .5),
    axis.ticks          = element_line(color = 'black'),
    axis.ticks.x        = ticks.x,
    axis.ticks.y        = ticks.y,
    axis.ticks.length   = unit(line.half / 1.2, 'pt'),
    axis.ticks.length.x        = NULL,
    axis.ticks.length.x.top    = NULL,
    axis.ticks.length.x.bottom = NULL,
    axis.ticks.length.y        = NULL,
    axis.ticks.length.y.left   = NULL,
    axis.ticks.length.y.right  = NULL,
    axis.minor.ticks.length    = rel(.75),
    axis.title.x        = title.x,
    axis.title.x.top    = element_text(margin = margin(b = line.half / 2), vjust = 0),
    axis.title.y        = title.y,
    axis.title.y.right  = element_text(angle = -90, margin = margin(l = line.half / 2), vjust = 1),

    legend.location       = leg.loc,
    legend.background     = element_blank(),
    legend.spacing        = unit(base.size, 'pt'),
    legend.spacing.x      = NULL,
    legend.spacing.y      = NULL,
    legend.margin         = margin(0, 0, 0, 0),
    legend.key            = NULL,
    legend.key.size       = unit(unitval, 'lines'),
    legend.key.height     = NULL,
    legend.key.width      = NULL,
    legend.key.spacing    = unit(line.half, 'pt'),
    legend.text           = element_text(size = rel(small), vjust = 1),
    legend.title          = element_text(size = rel(small), vjust = 1, hjust = 0, face = 'italic'),
    legend.ticks.length   = rel(.5),
    legend.position       = leg.pos,
    legend.direction      = NULL,
    legend.justification  = leg.jus,
    legend.box            = NULL,
    legend.box.margin     = margin(0, 0, 0, 0),
    legend.box.background = element_blank(),
    legend.box.spacing    = unit(base.size, 'pt'),

    panel.background   = element_blank(),
    panel.border       = border.panel,
    panel.grid.major.x = grid.x,
    panel.grid.minor.x = NULL,
    panel.grid.major.y = grid.y,
    panel.grid.minor.y = NULL,
    panel.spacing      = unit(line.half, 'pt'),
    panel.spacing.x    = NULL,
    panel.spacing.y    = NULL,
    panel.ontop        = FALSE,

    strip.background      = element_rect(fill = strip.bg, color = NA),
    strip.clip            = 'inherit',
    strip.text            = element_text(color = 'grey10', size = rel(small),
                                         margin = margin(line.half / 2, line.half / 2, line.half / 2, line.half / 2)),
    strip.text.x          = element_text(vjust = 1.5), # NULL,
    strip.text.y          = element_text(angle = -90),
    strip.text.y.left     = element_text(angle = 90),
    strip.placement       = 'inside',
    strip.placement.x     = NULL,
    strip.placement.y     = NULL,
    strip.switch.pad.grid = unit(line.half / 2, 'pt'),
    strip.switch.pad.wrap = unit(line.half / 2, 'pt'),

    plot.background       = element_rect(color = 'white'),
    plot.title            = element_text(face = 'bold', size = rel(large),
                                         hjust = title.jus, vjust = 1,
                                         margin = margin(b = line.half)),
    plot.title.position   = title.pos,
    plot.subtitle         = element_text(size = rel(small), hjust = title.jus, vjust = 1,
                                         margin = margin(b = line.half)),
    plot.caption          = element_text(size = rel(tiny), hjust = cap.jus, vjust = 1,
                                         margin = margin(t = line.half)),
    plot.caption.position = cap.pos,
    plot.tag              = element_text(face = 'bold', size = rel(1.2),
                                         hjust = 0, vjust = .7),
    plot.tag.position     = 'topleft',
    plot.margin           = margin(line.half, line.half, line.half, line.half),

    complete = TRUE
  )
}
