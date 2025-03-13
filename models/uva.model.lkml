connection: "postgres_company_data"

# Include all the views
include: "/views/**/*.view.lkml"
include: "/dashboards/*.dashboard" # include all the dashboards

datagroup: uva_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;
  max_cache_age: "1 hour"
}

persist_with: uva_default_datagroup

explore: company {}
