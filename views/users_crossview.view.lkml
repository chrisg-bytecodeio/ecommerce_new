view: users_crossview {
  measure: total_sales_email_users {
    description: "Total sales for email traffic source"
    type: sum
    sql: ${order_items.sale_price} ;;
    # filters: [users.traffic_source: "Email"]
    filters: [users.traffic_source_is_email: "Yes"]
    value_format_name: usd_0
    sql_distinct_key: ${order_items.id} ;;
  }
}
