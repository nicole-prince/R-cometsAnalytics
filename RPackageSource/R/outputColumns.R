#' The ModelSummary data frame contains one row of model
#' summary results for each exposure/outcome combination.
#' Depending on the model run and options specified, 
#' all the below names may not appear in the data frame.
#' \itemize{
#' \item{\code{adjspec}}{ Original adjustment variables specified}
#' \item{\code{adjvars}}{ Adjustment variables included in the model}
#' \item{\code{adjvars.removed}}{ Adjustment variables removed from the model}
#' \item{\code{adj_uid}}{ Adjustment variable universal ids}
#' \item{\code{adj.r.squared}}{ Adjusted R-squared}
#' \item{\code{aic}}{ Akaike information criterion}
#' \item{\code{bic}}{ Bayesian information criterion}
#' \item{\code{cohort}}{ String passed into \code{\link{runModel}}}
#' \item{\code{converged}}{ TRUE or FALSE for model convergence}
#' \item{\code{deviance}}{ Deviance of the fitted model}
#' \item{\code{df.null}}{ NULL model degrees of freedom}
#' \item{\code{df.residual}}{ Residual degrees of freedom}
#' \item{\code{exposure}}{ Exposure variable}
#' \item{\code{exposure_uid}}{ Exposure universal id}
#' \item{\code{exposurespec}}{ Exposure variable}
#' \item{\code{loglik}}{ Log-likelihood of the fitted model}
#' \item{\code{message}}{ Error message produced from the modeling function}
#' \item{\code{model}}{ Model label from \code{\link{getModelData}}}
#' \item{\code{model_function}}{ Model function used in \code{\link{runModel}}}
#' \item{\code{model_number}}{ Model number used in \code{\link{runAllModels}}}
#' \item{\code{nobs}}{ Number of observations used}
#' \item{\code{null.deviance}}{ Deviance of the NULL model}
#' \item{\code{outcome}}{ Outcome variable}
#' \item{\code{outcomespec}}{ Outcome variable}
#' \item{\code{outcome_uid}}{ Outcome universal id}
#' \item{\code{run}}{ Run number that can be used to link with the 
#'                    \code{\link{Effects}} table}
#' \item{\code{runmode}}{ "Batch" or "Interactive"}
#' \item{\code{r.squared}}{ R-squared, the fraction of variance explained by the model}
#' \item{\code{sigma}}{ Square root of the estimated variance of the random error}
#' \item{\code{stratavar}}{ Stratum variable(s)}
#' \item{\code{strata}}{ Stratum level(s)}
#' \item{\code{term}}{ Variable in the model}
#' \item{\code{wald.pvalue}}{ P-value from the Wald test of the exposure variable. 
#'                           Note that this test may be a multi-df test if the
#'                           exposure is categorical.}
#' \item{\code{wald.pvalue.adj}}{ Adjusted p-values of \code{wald.pvalue} for
#'                                exposure variables only}
#' \item{\code{exposure.covariances}}{ String of exposure reference level, dummy variable
#'              names and covariances 
#'                                    for a categorical exposure
#'                                    variable in a non-correlation model.
#'                                    This covariances can be used for changing the
#'                                    reference level of the categorical exposure variable.
#'   The string has the form:
#'     "ref|v1,v2,...,vm|cov(v1,v2),cov(v1,v3),cov(v2,v3),cov(v1,v4),...,cov(vm-1, vm)",
#'    where ref is the reference level and v1, v2, ..., vm are the dummy variable names.}
#' }
#'
#' @name ModelSummary
#' @title ModelSummary table 
#' @details Missing values will appear if a model did not converge, produced an error,
#'    or not run because of too many missing values in the outcome. 
#'    Adjusted p-values are only computed for models with a single outcome variable
#'    or single exposure variable.    
#'
NULL

#' The Effects data frame contains the estimates
#'  for each exposure, and  will contain multiple rows
#'  for categorical exposure variables.
#' Depending on the model run and options specified, 
#' all the below names may not appear in the data frame.
#' \itemize{
#' \item{\code{corr}}{ The correlation between \code{term} and the outcome}
#' \item{\code{estimate}}{ The regression coefficient of \code{term}}
#' \item{\code{estimate.lower}}{ The lower confidence limit for \code{term}}
#' \item{\code{estimate.upper}}{ The upper confidence limit for \code{term}}
#' \item{\code{exp.estimate}}{ The exponentiated regression coefficient of \code{term}}
#' \item{\code{exp.estimate.lower}}{ The exponentiated lower confidence limit for \code{term}}
#' \item{\code{exp.estimate.upper}}{ The exponentiated upper confidence limit for \code{term}}
#' \item{\code{exp.std.error}}{ The standard error of \code{exp.estimate} from the delta method}
#' \item{\code{exposurespec}}{ Exposure variable}
#' \item{\code{model}}{ Model label from \code{\link{getModelData}}}
#' \item{\code{model_number}}{ Model number used in \code{\link{runAllModels}}}
#' \item{\code{outcomespec}}{ Outcome variable}
#' \item{\code{pvalue}}{ The p-value of the test}
#' \item{\code{pvalue.adj}}{ Adjusted p-values for exposure variables only}
#' \item{\code{run}}{ Run number that can be used to link with the
#'                    \code{\link{ModelSummary}} table}
#' \item{\code{statistic}}{ The test statistic for \code{term}}
#' \item{\code{std.error}}{ The standard error of \code{estimate}}
#' \item{\code{stratavar}}{ Stratum variable(s)}
#' \item{\code{strata}}{ Stratum level(s)}
#' \item{\code{term}}{ Variable in the model}
#' }
#'
#' @name Effects
#' @title Effects table 
#' @details Missing values will appear if a model did not converge, produced an error,
#'    or not run because of too many missing values in the outcome. 
#'    Adjusted p-values are only computed for models with a single outcome variable
#'    or single exposure variable.    
#' 
NULL

#' Columns in the Errors_Warnings table. 
#' \itemize{
#' \item{\code{type}}{ WARNING or ERROR}
#' \item{\code{object}}{ The object that produced the warning or error. This is
#'                       typically a variable or a particular stratum.}
#' \item{\code{message}}{ Message describing the warning or error}
#' \item{\code{model}}{ Model label from \code{\link{getModelData}}}
#' \item{\code{model_number}}{ Model number used in \code{\link{runAllModels}}}
#' }
#'
#' @name Errors_Warnings
#' @title Errors and Warnings table 
#' @details The kinds of warnings and errors stored in this matrix are ones that
#'    apply to all models or all outcomes for an exposure variable. An error
#'    message for a particular exposure-outcome pair will be stored in the
#'    \code{message} column of the \code{\link{ModelSummary}} table.
#' 
NULL

#' Columns in Table1. 
#' Depending on the model run and options specified, 
#' all the below names may not appear in the data frame.
#' \itemize{
#' \item{\code{category}}{ Category for categorical variables only}
#' \item{\code{in.model}}{ How variable enters the model (outcome, exposure, 
#'      adjustment, time, group, weight, offset)}
#' \item{\code{max}}{ Maximum value}
#' \item{\code{mean}}{ Mean value}
#' \item{\code{median}}{ Median value}
#' \item{\code{min}}{ Minimum value}
#' \item{\code{n}}{ Number of non-missing observations}
#' \item{\code{n.missing}}{ Number of missing observations}
#' \item{\code{n.outcomeEqual0}}{ Number of non-missing observations with \code{outcome = 0}}
#' \item{\code{n.outcomeEqual1}}{ Number of non-missing observations with \code{outcome = 1}}
#' \item{\code{n.unique}}{ Number of unique non-missing observations}
#' \item{\code{quartile1}}{ 25th percentile}
#' \item{\code{quartile3}}{ 75th percentile}
#' \item{\code{stratavar}}{ Stratum variable(s)}
#' \item{\code{strata}}{ Stratum level(s)}
#' \item{\code{type}}{ Either continuous or categorical}
#' \item{\code{variable}}{ Variable name in the model}
#' }
#' @name Table1
#' @title Non-metabolite Variable Summary Table
#' @details The columns \code{max}, \code{mean}, \code{median},
#'        \code{min}, \code{n.missing}, \code{n.unique},
#'        \code{quartile1}, and \code{quartile3} are for
#'      continuous variables only. 
#' 
NULL
