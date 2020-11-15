# Compute column means of a data frame
# inputs:
#   df: a data frame
#   na.rm: a logical, meaning remove NA
col_means <- function(df, na.rm = FALSE) {
  if (!is.data.frame(df)) {
    df <- as.data.frame(df)
  }
  if (0 %in% dim(df)) {
    warning("empty input or factor input")
    return(df[0, 0])
  }

  numeric <- vapply(df, is.numeric, logical(1))
  if (!numeric) {
    warning("factor vector")
    return(df[0, 0])
  }
  numeric_cols <- df[, numeric, drop = FALSE]

  data.frame(lapply(numeric_cols, mean, na.rm = na.rm))
}
