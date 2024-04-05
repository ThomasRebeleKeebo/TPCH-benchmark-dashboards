connection: "wirecard-tpch"

# include all the views
include: "/views/**/*.view"

include: "/dashboards/*.dashboard"

datagroup: wirecard_tpch_default_datagroup {
  max_cache_age: "0 seconds"
}

persist_with: wirecard_tpch_default_datagroup

explore: lineitem {
  label: "(1) Keebo: Lineitem, Part"

  join: part {
    relationship: many_to_one
    sql_on: ${lineitem.l_partkey} = ${part.p_partkey} ;;
  }
}

explore: lineitem_orders {
  label: "(2) Keebo: Lineitem, Orders, Customer, Part, Nation, Region"

  join: orders {
    relationship: many_to_one
    sql_on: ${lineitem_orders.l_orderkey} = ${orders.o_orderkey} ;;
  }

  join: customer {
    relationship: many_to_one
    sql_on: ${orders.o_custkey} = ${customer.c_custkey} ;;
  }

  join: part {
    relationship: many_to_one
    sql_on: ${lineitem_orders.l_partkey} = ${part.p_partkey} ;;
  }

  join: nation {
    relationship: many_to_one
    sql_on: ${customer.c_nationkey} = ${nation.n_nationkey} ;;
  }

  join: region {
    relationship: many_to_one
    sql_on: ${nation.n_regionkey} = ${region.r_regionkey} ;;
  }
}
