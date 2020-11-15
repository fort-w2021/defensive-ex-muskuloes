# returns a positive natural number
count_them <- function(supposedly_a_count) {
  if (!checkmate::test_count(supposedly_a_count)) {
    warning(
      "rounding ", supposedly_a_count,
      " to the nearest integer."
    )
    supposedly_a_count <- round(supposedly_a_count)
  }
  checkmate::assert_count(supposedly_a_count)
  as.integer(supposedly_a_count)
}
