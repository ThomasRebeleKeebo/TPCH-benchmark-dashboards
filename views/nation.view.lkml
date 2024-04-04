view: nation {
  sql_table_name: "TPCH_SF1000"."NATION"
    ;;

  dimension: n_name {
    type: string
    sql: ${TABLE}."N_NAME" ;;
  }

  dimension: n_nationkey {
    primary_key: yes
    type: number
    sql: ${TABLE}."N_NATIONKEY" ;;
  }

  dimension: n_regionkey {
    type: number
    sql: ${TABLE}."N_REGIONKEY" ;;
  }

}
