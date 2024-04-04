view: part {
  sql_table_name: "TPCH_SF1000"."PART"
    ;;

  dimension: p_brand {
    type: string
    sql: ${TABLE}."P_BRAND" ;;
  }

  dimension: p_container {
    type: string
    sql: ${TABLE}."P_CONTAINER" ;;
  }

  dimension: p_name {
    type: string
    sql: ${TABLE}."P_NAME" ;;
  }

  dimension: p_partkey {
    primary_key: yes
    type: number
    sql: ${TABLE}."P_PARTKEY" ;;
  }

  dimension: p_type {
    type: string
    sql: ${TABLE}."P_TYPE" ;;
  }

}
