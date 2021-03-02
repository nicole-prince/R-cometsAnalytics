
runmodel.getTimeAttr <- function() {"ptime"}

# Delimiter in output lists of variable names
runModel.getVarSep <- function() {";"}
runModel.getOldVarSep <- function() {" "}

# Batch or interactive
getMode_batch       <- function() {"Batch"}
getMode_interactive <- function() {"Interactive"}
getAllMetabsName    <- function() {"All metabolites"}

# For appending stratification columns
runModel.getStrataColName    <- function() {"stratavar"}
runModel.getStrataNumColName <- function() {"strata"}

# For Warnings matrix
runModel.getWarningCol        <- function() {"type"}
runModel.getObjectCol         <- function() {"object"}
runModel.getMessageCol        <- function() {"message"}
runModel.getWarningsListName  <- function() {"Errors_Warnings"}
runModel.getUnknownErrorStr   <- function() {"unknown error"}
runModel.getTooFewSubsStr     <- function() {"too few subjects"}
runModel.getStratTooFewSubStr <- function() {"Stratum contains to few subjects"}

# Message when exposure has been removed from design matrix
runModel.getExpRemFromDesign <- function() {"exposure removed from design matrix"}

# For option strings
getNoFamilyValue    <- function() {""}
getOpStrSep         <- function() {";"}
getOpStrEq          <- function() {"="}
getModelOpsName     <- function() {"model.options"}
getOldCorrModelName <- function() {"runcorr"}
getCorrModelName    <- function() {"correlation"}
getGlmModelName     <- function() {"glm"}
getLmModelName      <- function() {"lm"}
getValidModelNames  <- function() {c(getCorrModelName(), getGlmModelName(), getLmModelName())}
getMetabDataOpsName <- function() {"options"} 

# For Effects data frame
getEffectsName             <- function() {"Effects"}
getEffectsTermName         <- function() {"term"}
getEffectsOutcomespecName  <- function() {"outcomespec"}
getEffectsExposurespecName <- function() {"exposurespec"}
getEffectsCorrEstName      <- function() {"corr"}
getEffectsPvalueName       <- function() {"p.value"}
getEffectsRunName          <- function() {"run"}

# ModelSummary 
getModelSummaryName       <- function() {"ModelSummary"}
getModelSummaryNobsName   <- function() {"nobs"}
getModelSummaryFunCol     <- function() {"model_function"}

# For input excel file
getModelOptionsIdCol  <- function() {"modelspec"}
getOptionNameCol      <- function() {"option"}
getOptionValueCol     <- function() {"value"}
getOptionsSheetName   <- function() {"ModelOptions"}
getGlobalOptionName   <- function() {"ModelChecks"}
getModelFunctionCol   <- function() {"function"}
getReqSheetNames      <- function() {c("Metabolites", "SubjectMetabolites", "SubjectData", "VarMap", "Models")} 
getReqMetabSheetCols  <- function() {c("metabid	", "metabolite_name")}
getReqVarMapSheetCols <- function() {c("VARREFERENCE", "COHORTVARIABLE", "VARTYPE")}
getReqModelsSheetCols <- function() {c("MODEL", "OUTCOMES", "EXPOSURE", "ADJUSTMENT", "STRATIFICATION", "WHERE")}
getReqModOpSheetCols  <- function() {c(getModelOptionsIdCol(), getModelFunctionCol(), getOptionNameCol(), getOptionValueCol())}

getVarRef_metabId    <- function() {"metabolite_id"}
getVarRef_subjectId  <- function() {"id"}

# Model options that specify variables
runModel.getOptionsThatAreVars <- function() {c("weights", "offset")}
