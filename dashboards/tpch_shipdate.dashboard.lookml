- dashboard: tpch_shipdate
  title: TPCH_Shipdate
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: IbWIfTKbyEqfRpzQhJvKao
  elements:
  - title: Q1
    name: Q1
    model: wirecard_tpch
    explore: lineitem
    type: looker_column
    fields: [lineitem.l_returnflag, lineitem.l_linestatus, lineitem.avg_disc, lineitem.avg_price,
      lineitem.count, lineitem.sum_base_price, lineitem.sum_charge, lineitem.sum_disc_price,
      lineitem.sum_qty]
    filters: {}
    sorts: [lineitem.avg_disc desc 0]
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
    value_labels: legend
    label_type: labPer
    listen:
      L Shipdate Date: lineitem.l_shipdate_date
    row: 0
    col: 0
    width: 9
    height: 7
  - title: Q6
    name: Q6
    model: wirecard_tpch
    explore: lineitem
    type: single_value
    fields: [lineitem.revenue]
    filters:
      lineitem.l_discount: "[0.05, 0.07]"
      lineitem.l_quantity: "<24"
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      L Shipdate Date: lineitem.l_shipdate_date
    row: 0
    col: 9
    width: 9
    height: 7
  - title: Q14
    name: Q14
    model: wirecard_tpch
    explore: lineitem
    type: single_value
    fields: [lineitem.promo_revenue]
    filters: {}
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      L Shipdate Date: lineitem.l_shipdate_date
    row: 7
    col: 0
    width: 9
    height: 7
  - title: Q17
    name: Q17
    model: wirecard_tpch
    explore: lineitem
    type: single_value
    fields: [lineitem.sum_base_price]
    filters:
      lineitem.l_quantity: ">20"
      part.p_brand: Brand#23
      part.p_container: MED BOX
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      L Shipdate Date: lineitem.l_shipdate_date
    row: 7
    col: 9
    width: 9
    height: 7
  filters:
  - name: L Shipdate Date
    title: L Shipdate Date
    type: field_filter
    default_value: 300 day
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: wirecard_tpch
    explore: lineitem
    listens_to_filters: []
    field: lineitem.l_shipdate_date
