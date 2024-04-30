- dashboard: tpch_orderdate
  title: TPCH_Orderdate
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: QatRC7HZEtsFT1T7ZoUCJV
  elements:
  - title: Q3
    name: Q3
    model: wirecard_tpch
    explore: lineitem_orders
    type: looker_line
    fields: [lineitem_orders.l_orderkey, lineitem_orders.revenue, orders.o_orderdate_date,
      orders.o_shippriority]
    filters:
      customer.c_mktsegment: BUILDING
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
  - title: Q5
    name: Q5
    model: wirecard_tpch
    explore: lineitem_orders
    type: looker_column
    fields: [nation.n_name, lineitem_orders.revenue]
    filters:
      region.r_name: ASIA
    sorts: [lineitem_orders.revenue desc 0]
    limit: 500
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      O Orderdate Date: orders.o_orderdate_date
    row: 0
    col: 9
    width: 10
    height: 8
  - title: Q10
    name: Q10
    model: wirecard_tpch
    explore: lineitem_orders
    type: looker_column
    fields: [customer.c_mktsegment, lineitem_orders.revenue, nation.n_name]
    filters:
      lineitem_orders.l_returnflag: N
    sorts: [lineitem_orders.revenue desc 0]
    limit: 500
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      O Orderdate Date: orders.o_orderdate_date
    row: 8
    col: 0
    width: 9
    height: 7
  - title: Q10 (variation with Part)
    name: Q10 (variation with Part)
    model: wirecard_tpch
    explore: lineitem_orders
    type: looker_column
    fields: [part.p_brand, nation.n_name, lineitem_orders.revenue]
    filters:
      lineitem_orders.l_discount: ">0.05"
    sorts: [lineitem_orders.revenue desc 0]
    limit: 500
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      O Orderdate Date: orders.o_orderdate_date
    row: 8
    col: 9
    width: 10
    height: 7

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


  filters:
  - name: O Orderdate Date
    title: O Orderdate Date
    type: field_filter
    default_value: 300 day
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
