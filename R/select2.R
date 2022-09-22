#' select2
#'
#' Can select 
#' @param df A `data.frame` to select columns from  
#' @param ind Either a `character` or `numeric` vector
#'
#' @return A `data.frame` subsetted with `ind`
#' 
#' @export
#'
#' @examples
select2 <- function(df, ind){
    if(!is.data.frame(df)){
        stop("df has to be data.frame")
    }
    if(!is.character(ind) & !is.numeric(ind)){
        stop("ind has to be a character or numeric vector")
    }
    df[ind]
}

select2(iris, c("Sepal.Length", "Sepal.Width"))
select2(iris, c(1:3))
