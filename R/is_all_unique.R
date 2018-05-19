
#' Determine uniqueness of column
#'
#' Use to easily evaluate whether a data frame column or vector only contains unique values.
#'
#' @author Kelli-Jean Chun, \email{kjchunz@@gmail.com}
#' @param x A vector or data frame column
#' @return Boolean, whether or not the vector contains only unique values
#' @export


is_all_unique = function(x){
  return(sum(duplicated(x)) == 0)
}
