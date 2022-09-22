#' Title
#'
#' @param df A data.frame
#' @param ind A cector of indices, or logical vector
#'
#' @return A data.frame with the subsetted rows
#' @export
#'
#' @examples
#' filter2(iris, 1:3)
#' filter2(iris, iris$Species == "setosa")
filter2 <- function(df, ind){
    if(!is.data.frame(df)){
        stop("df has to be data.frame")
    }
    df[ind, ]
}

