# lag function
# input:
#   x: input vector
#   n: lag
# output:
#   add NA to input vector, x, n times
lag <- function(x, n = 1L) {
  checkmate::assert_atomic_vector(x)
  checkmate::assert_number(n, lower = 0, upper = length(x))
  xlen <- length(x)
  c(rep(NA, n), x[seq_len(xlen - n)])
}
