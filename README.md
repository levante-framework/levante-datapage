# LEVANTE data browser

Interactive exploration of LEVANTE data.

- __Overview__ tab shows counts of participants, assessments, and ages, which can be broken down by task, language, site, and/or dataset. The data source is the [processed data overview](https://stanford.redivis.com/workflows/vvwv-c8crs6gbs) Redivis workflow (`score_summary` table).
- __Scores__ tab shows ability scores as a function of age for each task, with filtering functionality by age range, age gap between administrations, site, dataset, task, language, adaptivity, score type, and scoring model. The default data source is the [levante-data-pilots-processed](https://stanford.redivis.com/datasets/7sw8-6z5xvcn69) Redivis dataset. If the user logs into their Redivis account through the "populate sources" button, other `-processed` datasets can be set as the data source.
- __Items__ tab shows item IRT parameters for each item in each task. The data source is the `registry_parameter` table in the LEVANTE item banks Airtable base.
