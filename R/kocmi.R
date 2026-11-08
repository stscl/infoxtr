#' Knockoff Conditional Mutual Information
#' 
#' @note `kocmi` only support numeric data.
#'
#' @inheritParams surd
#' @param conds Integer vector of column indices for the conditioning variables.
#' @param knockoff Knockoff realizations for the `agent` variable. Each column is 
#'   a Monte Carlo realization generated using the `agent` and `conds` variables.
#' @param null_knockoff (optional) Knockoff realizations generated under the null 
#'   setting where all variables (`target`, `agent`, `conds`) are jointly used to 
#'   construct knockoffs. Each column represents one Monte Carlo realization. Must 
#'   be `NULL` if `contain_null = FALSE`.
#' @param type (optional) Estimation method: `"disc"` for discrete mutual information
#'   or `"cont"` for continuous mutual information (KSG estimator).
#' @param nboots (optional) Number of permutations used in the sign-flipping permutation
#'   test for evaluating the significance of the mean information difference.
##' @param k (optional) For `type = "cont"`, the number of nearest neighbors used by
#'   the continuous conditional mutual information estimator. For `type = "disc"`, the 
#'   number of bins used for discretization.
#' @param seed (optional) Random seed used for permutation test.
#' @param contain_null (optional) Logical. If `TRUE`, the test statistic is computed as 
#' \eqn{I(Y; X_{null} | Z) - I(Y; X_{knockoff} | Z)}. If `FALSE`, it is computed as 
#' \eqn{I(Y; X | Z) - I(Y; X_{knockoff} | Z)}.
#'
#' @returns A named numeric vector.
#' @export
#' @references 
#' Zhang, X., Chen, L., 2025. Quantifying interventional causality by knockoff operation. Science Advances 11.
#'
#' @examples
#' set.seed(42)
#' kn1 = replicate(50, stats::rnorm(100))
#' kn2 = replicate(50, stats::rnorm(100))
#' mat = replicate(3, stats::rnorm(100))
#' infoxtr::kocmi(mat, 1, 2, 3, kn1, kn2)
#' 
kocmi = \(data, target, agent, conds, knockoff, null_knockoff = NULL,
          type = c("cont", "disc"), nboots = 1e4, k = 3, threads = 1,
          seed = 42, base = exp(1), method = "equal", contain_null = TRUE) {
  type = match.arg(type)
  mat = .convert2mat(data, contain_type = FALSE)
  knockoff = .convert2mat(knockoff, contain_type = FALSE)
  if (!is.null(null_knockoff)) null_knockoff = .convert2mat(null_knockoff, contain_type = FALSE)
  return(RcppKOCMI(mat, abs(target), abs(agent), abs(conds), knockoff, null_knockoff, 
                   type, nboots, k, 0, threads, seed, base, method, contain_null))
}
