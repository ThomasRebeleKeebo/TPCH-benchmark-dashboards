view: lineitem_orders {
  derived_table: {
    sql: select
          L_DISCOUNT,
          L_EXTENDEDPRICE,
          L_LINENUMBER,
          L_ORDERKEY,
          L_PARTKEY,
          L_RETURNFLAG
            from "TPCH_SF1000"."LINEITEM"
             ;;
  }

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${TABLE}.L_LINENUMBER, ${TABLE}.L_ORDERKEY) ;;
  }

  dimension: l_discount {
    type: number
    sql: ${TABLE}."L_DISCOUNT" ;;
  }

  dimension: l_extendedprice {
    type: number
    sql: ${TABLE}."L_EXTENDEDPRICE" ;;
  }

  dimension: l_linenumber {
    type: number
    sql: ${TABLE}."L_LINENUMBER" ;;
  }

  dimension: l_orderkey {
    type: number
    sql: ${TABLE}."L_ORDERKEY" ;;
  }

  dimension: l_partkey {
    type: number
    sql: ${TABLE}."L_PARTKEY" ;;
  }

  dimension: l_returnflag {
    type: string
    sql: ${TABLE}."L_RETURNFLAG" ;;
  }

  measure: revenue {
    type: sum
    sql: ${l_extendedprice} * (1 - ${l_discount}) ;;
  }

}
