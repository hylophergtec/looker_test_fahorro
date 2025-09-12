view: flotilla {
  sql_table_name: `replica_claveteo_pro_db.flotilla` ;;

  dimension: activo {
    type: number
    sql: ${TABLE}.activo ;;
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
  dimension: descripcion_status {
    type: string
    sql: ${TABLE}.descripcion_status ;;
  }
  dimension: estatus_reporte {
    type: string
    sql: ${TABLE}.estatus_reporte ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: id_flotilla {
    type: number
    sql: ${TABLE}.id_flotilla ;;
  }
  dimension: nombre_archivo {
    type: string
    sql: ${TABLE}.nombre_archivo ;;
  }
  dimension: total_vehiculos {
    type: number
    sql: ${TABLE}.total_vehiculos ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension_group: uploaded {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.uploaded_at ;;
  }
  dimension: url_archivo {
    type: string
    sql: ${TABLE}.url_archivo ;;
  }
  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
  measure: count {
    type: count
  }
}

view: flotilla__datastream_metadata__sort_keys {

  dimension: flotilla__datastream_metadata__sort_keys {
    type: string
    sql: flotilla__datastream_metadata__sort_keys ;;
  }
}
