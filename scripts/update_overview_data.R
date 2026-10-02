# connect to processed data overview workflow
wf <- redivis::redivis$user("levante")$workflow("levante_data_latest_overview:g51j")

# update all workflow datasources to current version
wf_ds <- wf$list_datasources()
purrr::walk(wf_ds, \(ds) ds$get())
purrr::walk(wf_ds, \(ds) ds$update(version = "current"))

# run transform that populates score_summary table
wf$transform("score_summary")$run()
