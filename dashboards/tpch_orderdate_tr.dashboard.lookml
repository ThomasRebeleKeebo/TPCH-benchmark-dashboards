- dashboard: tpch_orderdate_tr
  title: Tpch Orderdate Tr
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:
  - name: O Orderdate Date
    title: O Orderdate Date
    type: field_filter
    default_value: after 2022-01-01
    allow_multiple_values: true
    required: false
    ui_config:
     type: advanced
     display: popover
     options: []
    model: wirecard_tpch
    explore: lineitem_orders
    listens_to_filters: []
    field: orders.o_orderdate_date

  elements:
  - title: Q3b
    name: Q3b
    model: wirecard_tpch
    explore: lineitem_orders
    type: looker_line
    fields: [lineitem_orders.l_orderkey, lineitem_orders.revenue, orders.o_orderdate_date,
      orders.o_shippriority]
    filters:
      customer.c_mktsegment: FURNITURE
    sorts: [orders.o_orderdate_date desc]
    limit: 100
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      O Orderdate Date: orders.o_orderdate_date
    row: 0
    col: 0
    width: 9
    height: 8
