view: region {
  sql_table_name: "TPCH_SF1000"."REGION"
    ;;

  dimension: r_name {
    type: string
    sql: ${TABLE}."R_NAME" ;;
  }

  dimension: r_regionkey {
    primary_key: yes
    type: number
    sql: ${TABLE}."R_REGIONKEY" ;;
  }

}
