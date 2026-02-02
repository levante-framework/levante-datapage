# TODO: move upstream into processing workflow

task_info <- dplyr::tribble(
  ~task_code , ~task_label              , ~task_category,
  "hf"       , "hearts & flowers"       , "executive function",
  "sds"      , "same & different"       , "executive function",
  "mg"       , "memory"                 , "executive function",
  "math"     , "math"                   , "math",
  "matrix"   , "pattern matching"       , "reasoning",
  "mrot"     , "shape rotation"         , "spatial cognition",
  "trog"     , "sentence understanding" , "language",
  "vocab"    , "vocabulary"             , "language",
  "tom"      , "stories"                , "social cognition",
  "pa"       , "language sounds"        , "reading",
  "sre"      , "sentence reading"       , "reading",
  "swr"      , "word reading"           , "reading",
) |>
  mutate(task_label = task_label |> stringr::str_to_title() |> forcats::fct_inorder(),
         task_category = task_category |> stringr::str_to_title() |> forcats::fct_inorder())
