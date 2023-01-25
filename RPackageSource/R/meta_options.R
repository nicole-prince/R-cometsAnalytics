
#' @name meta_options
#' @title Meta-analysis options
#' @description A list of options for the runMeta function
#' @details
#' \itemize{
#' \item{\code{min.n.cohort}}{ Minimum number of cohorts to include when meta-analyzing
#'                             each metabolite.
#'                     The default is 2.}
#' \item{\code{min.nsub.cohort}}{ Minimum number of subjects in a cohort for a metabolite 
#'                                to be included from that cohort.
#'                     The default is 25.}
#' \item{\code{min.nsub.total}}{ Minimum number of subjects in all cohorts for a metabolite
#'                               to be meta-analyzed.
#'                     The default is 50.}
#' \item{\code{cohorts.include}}{ Character vector of cohorts to include.
#'                      The default is NULL.}
#' \item{\code{cohorts.exclude}}{ Character vector of cohorts to exclude.
#'                      The default is NULL.}
#' \item{\code{output.type}}{ Type of output file, either "xlsx" for an Excel worksheet
#'                            or "rda" for an R object file created with the \code{save()} function.
#'                      The default is "xlsx".}
#' \item{\code{strata.exclude.het.test}}{ A list of stratification levels to be excluded from
#'                      the test for heterogeneity.
#'      This list has the form list(var1=vec1, var2=vec2, ...), where var1, var2, ... are stratification
#'      variables, and vec1, vec2, ... are vectors of stratification levels to be removed
#'      from the test.
#'                      The default is NULL.}
#' }
#'
NULL


getValidGlobalMetaOps <- function() {

  ops.char    <- c(getOutTypeOpName())
  ops.charVec <- c(metaOp_cohorts.include(), metaOp_cohorts.exclude())
  ops.num     <- c(metaOp_minNcohortName(), metaOp_cohortMinSubs(), metaOp_totalMinSubs(),
                   "DEBUG", "DONOTRUN")
  ops.log     <- NULL
  ops.list    <- metaOp_strataToExcludeFromHetTest()
  default     <- list(cohorts.include=NULL, cohorts.exclude=NULL, DEBUG=0, DONOTRUN=0)
  default[[metaOp_minNcohortName()]] <- metaOp_minNcohortDefault()
  default[[metaOp_cohortMinSubs()]]  <- metaOp_cohortMinSubsDefault()
  default[[metaOp_totalMinSubs()]]   <- metaOp_totalMinSubsDefault()
  default[[getOutTypeOpName()]]      <- getOutTypeOpDefault()
  default[metaOp_strataToExcludeFromHetTest()] <- list(NULL)

  valid <- names(default)

  list(ops.character=ops.char, ops.numeric=ops.num, ops.logical=ops.log,
       valid=valid, default=default, ops.charVec=ops.charVec, ops.list=ops.list)

} 

meta_check_op <- function(op) {

  if (!length(op)) op <- list()
  tmp        <- getValidGlobalMetaOps()
  # Add in models, which is not a global option in opfile
  valid      <- c(tmp$valid, metaOp_models())
  def        <- c(tmp$def, list(NULL))
  names(def) <- valid

  check.list(op, "op", valid)
  op <- default.list(op, valid, def)
  op
}

