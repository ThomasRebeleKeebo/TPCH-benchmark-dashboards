view: orders {
  derived_table: {
    sql: select
          O_CUSTKEY,
          dateadd(year, 24, O_ORDERDATE) O_ORDERDATE,
          O_ORDERKEY,
          O_SHIPPRIORITY
            from "TPCH_SF1000"."ORDERS"
             ;;
  }

  dimension: o_custkey {
    type: number
    sql: ${TABLE}."O_CUSTKEY" ;;
  }

  dimension_group: o_orderdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."O_ORDERDATE" ;;
  }

  dimension: o_orderkey {
    primary_key: yes
    type: number
    sql: ${TABLE}."O_ORDERKEY" ;;
  }

  dimension: o_shippriority {
    type: number
    sql: ${TABLE}."O_SHIPPRIORITY" ;;
  }

}
