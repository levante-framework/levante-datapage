library(redivis)
library(purrr)

# connect to processed data overview workflow
wf <- redivis$user("levante")$workflow("processed_data_overview:vvwv")

# update all workflow datasources to current version
wf_ds <- wf$list_datasources()
walk(wf_ds, \(ds) ds$get())
walk(wf_ds, \(ds) ds$update(version = "current"))

# run notebook that stacks scores into score_summary table
wf$notebook("stack scores")$run()
