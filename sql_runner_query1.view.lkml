
view: sql_runner_query1 {
  derived_table: {
    sql: select * from company ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}."rank" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."url" ;;
  }

  dimension: state_l {
    type: string
    sql: ${TABLE}."state_l" ;;
  }

  dimension: state_s {
    type: string
    sql: ${TABLE}."state_s" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: metro {
    type: string
    sql: ${TABLE}."metro" ;;
  }

  dimension: growth {
    type: number
    sql: ${TABLE}."growth" ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."revenue" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."industry" ;;
  }

  dimension: yrs_on_list {
    type: number
    sql: ${TABLE}."yrs_on_list" ;;
  }

  set: detail {
    fields: [
        id,
	rank,
	name,
	url,
	state_l,
	state_s,
	city,
	metro,
	growth,
	revenue,
	industry,
	yrs_on_list
    ]
  }
}
