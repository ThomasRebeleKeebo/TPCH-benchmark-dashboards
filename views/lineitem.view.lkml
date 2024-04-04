view: lineitem {
  derived_table: {
    sql: select
          L_DISCOUNT,
          L_EXTENDEDPRICE,
          L_LINENUMBER,
          L_LINESTATUS,
          L_ORDERKEY,
          L_PARTKEY,
          L_QUANTITY,
          L_RETURNFLAG,
          dateadd(year, 24, L_SHIPDATE) L_SHIPDATE,
          L_SUPPKEY,
          L_TAX
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

  dimension: l_linestatus {
    type: string
    sql: ${TABLE}."L_LINESTATUS" ;;
  }

  dimension: l_orderkey {
    type: number
    sql: ${TABLE}."L_ORDERKEY" ;;
  }

  dimension: l_partkey {
    type: number
    sql: ${TABLE}."L_PARTKEY" ;;
  }

  dimension: l_quantity {
    type: number
    sql: ${TABLE}."L_QUANTITY" ;;
  }

  dimension: l_returnflag {
    type: string
    sql: ${TABLE}."L_RETURNFLAG" ;;
  }

  dimension_group: l_shipdate {
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
    sql: ${TABLE}."L_SHIPDATE" ;;
  }

  dimension: l_suppkey {
    type: number
    sql: ${TABLE}."L_SUPPKEY" ;;
  }

  dimension: l_tax {
    type: number
    sql: ${TABLE}."L_TAX" ;;
  }

  measure: sum_qty {
    type: sum
    sql: ${TABLE}."L_QUANTITY" ;;
  }

  measure: sum_base_price {
    type: sum
    sql: ${TABLE}."L_EXTENDEDPRICE" ;;
  }

  measure: sum_disc_price {
    type: sum
    sql: ${TABLE}."L_EXTENDEDPRICE" * (1 - ${TABLE}."L_DISCOUNT") ;;
  }

  measure: sum_charge {
    type: sum
    sql: ${TABLE}."L_EXTENDEDPRICE" * (1 - ${TABLE}."L_DISCOUNT") * (1 + ${TABLE}."L_TAX") ;;
  }

  measure: revenue {
    type: sum
    sql: ${TABLE}."L_EXTENDEDPRICE" * ${TABLE}."L_DISCOUNT" ;;
  }

  measure: promo_revenue_sum1 {
    type: sum
    sql: CASE WHEN (${part.p_type} like 'PROMO%') THEN (${l_extendedprice} * (1 - ${l_discount})) ELSE 0 END ;;
  }

  measure: promo_revenue {
    type: number
    sql: ${promo_revenue_sum1} / ${sum_disc_price} ;;
  }

  measure: avg_price {
    type: average
    sql: ${TABLE}."L_EXTENDEDPRICE" ;;
  }

  measure: avg_disc {
    type: average
    sql: ${TABLE}."L_DISCOUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: [l_linenumber]
  }
}
