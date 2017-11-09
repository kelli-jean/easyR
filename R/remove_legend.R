
#' Remove the legend
#'
#' Returns a ggplot object, with the legend removed.
#'
#' @author Kelli-Jean Chun, \email{kjchunz@@gmail.com}
#' @param ggplot_obj ggplot that has a legend that you want to remove
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


remove_legend = function(ggplot_obj){
  return(ggplot_obj + theme(legend.position="none"))
}
