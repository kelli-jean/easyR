
#' Extract the legend
#'
#' Returns the legend from a ggplot object
#' Function taken from this stackoverflow post:
#' \href{here}{https://stackoverflow.com/questions/11883844/inserting-a-table-under-the-legend-in-a-ggplot2-histogram}
#'
#' @author Kelli-Jean Chun, \email{kjchunz@@gmail.com}
#' @param ggplot_obj ggplot that has a legend
#' @return The ggplot's legend
#' @examples
#' library(ggplot2)
#' library(gridExtra)
#' library(grid)
#' cars = mtcars
#' cars$cyl = factor(cars$cyl)
#' p1 = ggplot(cars, aes(x=wt, y=mpg, group=cyl, colour=cyl)) +
#'   geom_point() +
#'   theme(legend.position="bottom")
#' p2 = ggplot(cars, aes(x=wt, y=hp, group=cyl, colour=cyl)) +
#'   geom_point()
#' legend = get_legend(p1)
#' grid.arrange(arrangeGrob(remove_legend(p1),
#'                          remove_legend(p2),
#'                          ncol=2),
#'              legend,
#'              heights=c(10,1))
#'
#' @export

get_legend = function(ggplot_obj){
  tmp = ggplot_gtable(ggplot_build(ggplot_obj))
  leg = which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  legend = tmp$grobs[[leg]]
  return(legend)
}
