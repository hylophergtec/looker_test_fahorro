view: cliente {
  sql_table_name: `replica_claveteo_pro_db.cliente` ;;

  dimension: activo {
    type: number
    sql: ${TABLE}.activo ;;
  }
  dimension: cliente {
    type: string
    sql: ${TABLE}.cliente ;;
  }
  dimension: cp {
    type: string
    sql: ${TABLE}.cp ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: datastream_metadata__change_sequence_number {
    type: string
    sql: ${TABLE}.datastream_metadata.change_sequence_number ;;
    group_label: "Datastream Metadata"
    group_item_label: "Change Sequence Number"
  }
  dimension: datastream_metadata__change_type {
    type: string
    sql: ${TABLE}.datastream_metadata.change_type ;;
    group_label: "Datastream Metadata"
    group_item_label: "Change Type"
  }
  dimension: datastream_metadata__sort_keys {
    hidden: yes
    sql: ${TABLE}.datastream_metadata.sort_keys ;;
    group_label: "Datastream Metadata"
    group_item_label: "Sort Keys"
  }
  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }
  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: id_giro {
    type: number
    sql: ${TABLE}.id_giro ;;
  }
  dimension: id_tipo {
    type: number
    sql: ${TABLE}.id_tipo ;;
  }
  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
  }
}

view: cliente__datastream_metadata__sort_keys {

  dimension: cliente__datastream_metadata__sort_keys {
    type: string
    sql: cliente__datastream_metadata__sort_keys ;;
  }
}
