
#' Find the current directory in RStudio
#'
#' Returns the current directory of the file, if the IDE is RStudio.
#' Cannot be used if the file is sourced. Use cur_dir_source() instead.
#'
#' @author Kelli-Jean Chun, \email{kjchunz@@gmail.com}
#' @return script file directory path
#' @examples
#' # Add this in your script to change current directory
#' setwd(cur_dir())
#' @export
#' @seealso \code{\link{cur_dir_source}}, \code{\link{setwd_cur}}
cur_dir = function(){
  return(dirname(rstudioapi::getActiveDocumentContext()$path))
}


#' Find the current directory of a sourced file
#'
#' Returns the current directory of the file.
#' Can only be used if the file is sourced.
#' Use cur_dir() if you are not sourcing and working in RStudio.
#'
#' @author Kelli-Jean Chun, \email{kjchunz@@gmail.com}
#' @return sourced script file directory path
#' @examples
#' # Use when sourcing your script to change current directory
#' setwd(cur_dir_source())
#' @export
#' @seealso \code{\link{cur_dir}}, \code{\link{setwd_cur}}
cur_dir_source = function(){
  return(dirname(sys.frame(1)$ofile))
}


#' Set the wd to the current directory of the file
#'
#' @author Kelli-Jean Chun, \email{kjchunz@@gmail.com}
#' @examples
#' setwd_cur()
#' @export
#' @seealso \code{\link{cur_dir}}, \code{\link{cur_dir_source}}
setwd_cur = function(){
  tryCatch(
    {setwd(cur_dir_source())},
    error=function(cond){
      setwd(cur_dir())}
  )
}
